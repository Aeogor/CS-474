//
//  linkedlist.hpp
//  CS474Project3
//
//  Created by Srinivas Lingutla on 4/20/18.
//  Copyright © 2018 Srinivas Lingutla. All rights reserved.
//

#ifndef linkedlist_hpp
#define linkedlist_hpp

#include <stdio.h>
#include "AppliancePtr.hpp"



struct LLnode
{
    AppliancePtr app;
    LLnode *next;
};

class list
{
    
private:
 
    int FirstApplianceInUse;
    int SecondApplianceInUse;
    int ThirdApplianceInUse;
    
    LLnode *head, *tail;
    
public:
    
    list();
    
    void newNode(int);
    
    void push();
    
    void initialize();
    
    void replaceAnAppliance(int _id);
    
    void printAll();
    
    void printOnlyMemory();
    
    void updateAppliance(int id, string type, string manufac, double newPrice, vector<string> pictures);
    
    //AppliancePtr * findAppliance(int);
    
    void updateCurrentPrice(double price);
    
    void saveAll();
    
    int getCurrentAppliance();


};




#endif /* linkedlist_hpp */
