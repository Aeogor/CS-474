//
//  Appliance.cpp
//  CS474Project3
//
//  Created by Srinivas Lingutla on 4/20/18.
//  Copyright © 2018 Srinivas Lingutla. All rights reserved.
//

#include "Appliance.hpp"


    Appliance::Appliance(){
        //default constructor
    }

    Appliance::Appliance(int id, string type, string manufac, double price, vector <string> pictures)
    {
      _id = id;
      _type = type;
      _manufac = manufac;
      _price = price;
      _pictures = pictures;

    }

    int Appliance::getID(){ return _id; }
    void Appliance::setID(int id){ _id = id;}

    void Appliance::setType(string type){ _type = type; }
    string Appliance::getType(){ return _type;}

    void Appliance::setManufac(string manufac){  _manufac = manufac;}
    string Appliance::getManufac(){ return _manufac;}

    void Appliance::setPrice(double price){ _price = price;}
    double Appliance::getPrice(){ return _price;}

    void Appliance::setPics(vector <string> pictures){ _pictures = pictures;}
    vector <string> Appliance::getPics(){ return _pictures;}

    void Appliance::printAppliance(){
        cout << endl << "-------------------------------" << endl;
        cout << "Appliance " << _id << endl;
        cout << "Type: " << _type << endl;
        cout << "Manufacturer: " << _manufac << endl;
        cout << "Price: $" << _price << endl;
        //cout << "Pictures: " << _pictures << endl;
        for (int i=0; i<_pictures.size(); i++)
            cout << _pictures[i] << endl;
        //cout << "-------------------------------" << endl;
    }
