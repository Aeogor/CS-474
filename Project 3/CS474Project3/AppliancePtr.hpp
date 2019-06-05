//
//  AppliancePtr.hpp
//  CS474Project3
//
//  Created by Srinivas Lingutla on 4/20/18.
//  Copyright © 2018 Srinivas Lingutla. All rights reserved.
//

#ifndef AppliancePtr_hpp
#define AppliancePtr_hpp

#include <stdio.h>
#include "Appliance.hpp"


using namespace std;

class AppliancePtr{
	public:
    
        AppliancePtr();
		AppliancePtr(int, Appliance*);
		~AppliancePtr();

		Appliance* operator->() ;
		Appliance& operator*() ;
    
        void LoadFromFile();
        void WriteToFile();
        void removeApplianceFromMemory();
        //void printApplication();
        //void updatePrice(double);
        int getID();
        int isInMemory();
        //void updateAll(string type, string manufac, double price, vector<string> pictures);
    
    
	protected:
    int id;
		Appliance *_Appliance;

		//AppliancePtr(const AppliancePtr&);
		//AppliancePtr& operator = (const AppliancePtr&);
    

    

};



#endif /* AppliancePtr_hpp */
