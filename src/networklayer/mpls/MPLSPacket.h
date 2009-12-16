//
// (C) 2005 Vojtech Janota
// (C) 2003 Xuan Thang Nguyen
//
// This library is free software, you can redistribute it
// and/or modify
// it under  the terms of the GNU Lesser General Public License
// as published by the Free Software Foundation;
// either version 2 of the License, or any later version.
// The library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU Lesser General Public License for more details.
//

#ifndef __INET_MPLSPACKET_H
#define __INET_MPLSPACKET_H

#include <stack>
#include <omnetpp.h>
#include "INETDefs.h"


/**
 * Represents a packet with MPLS headers
 */
class INET_API MPLSPacket: public cPacket
{

  protected:
	class MPLSStack
	{
	 protected:
		typedef std::vector<int> LabelStack;
		LabelStack labels;
	 public:
	    MPLSStack() {labels.clear();}
	    ~MPLSStack() {labels.clear();}
		void push(int i) {labels.insert(labels.begin(),i);}
		void pop() {labels.erase(labels.begin());}
		int & top() {return labels.front();}
		unsigned int size() const {return labels.size();}
	 	bool empty() const {return labels.empty();}
		MPLSStack& operator=(const MPLSStack& other) {this->labels = other.labels; return *this;}

		int  getValue(const unsigned int &i) const {return this->labels[i];}
		void setValue(const unsigned int &i, int val) {this->labels[i]=val;}
	};


  protected:
    //typedef std::stack<int> LabelStack;
    // LabelStack labels;
    MPLSStack labels;

  public:
    /* constructors*/
    MPLSPacket(const char *name=NULL);
    MPLSPacket(const MPLSPacket &p);

    /* assignment operator*/
    virtual MPLSPacket& operator=(const MPLSPacket& p);

    /**
     * cloning function
     */
    virtual MPLSPacket *dup() const {return new MPLSPacket(*this);}

    /**
     * Swap Label operation
     */
    inline void swapLabel(int newLabel)  {labels.top()=newLabel;}

    /**
     * Pushes new label on the label stack
     */
    inline void pushLabel(int newLabel)  {labels.push(newLabel);addBitLength(32);}

    /**
     * Pops the top label
     */
    inline void popLabel()  {labels.pop();addBitLength(-32);}

    /**
     * Returns true if the label stack is not empty
     */
    inline bool hasLabel()  {return !labels.empty();}

    /**
     * Returns the top label
     */
    inline int getTopLabel()  {return labels.top();}
    virtual std::string detailedInfo() const;
};

#endif


