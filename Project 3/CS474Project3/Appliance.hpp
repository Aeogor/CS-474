//
//  Appliance.hpp
//  CS474Project3
//
//  Created by Srinivas Lingutla on 4/20/18.
//  Copyright © 2018 Srinivas Lingutla. All rights reserved.
//

#ifndef Appliance_hpp
#define Appliance_hpp

#include <string>
#include <fstream>
#include <iostream>
#include <vector>

using namespace std;

class Appliance
{

private:
    int _id;
    string _type;
    string _manufac;
    double _price;
    vector <string> _pictures;
    static int IDcounter;

public:
    Appliance();
    Appliance(int id, string type, string manufac, double price, vector <string> pictures);
    ~Appliance();

    int getID();
    void setID(int id);

    void setType(string type);
    string getType();

    void setManufac(string manufac);
    string getManufac();

    void setPrice(double price);
    double getPrice();

    void setPics(vector <string> pictures);
    vector <string> getPics();
    
    void printAppliance();

};


#endif /* Appliance_hpp */
