//
//  Appliance.cpp
//  CS474Project3
//
//  Created by Srinivas Lingutla on 4/20/18.
//  Copyright © 2018 Srinivas Lingutla. All rights reserved.
//

#include "AppliancePtr.hpp"


  AppliancePtr::AppliancePtr(int newid, Appliance *app = nullptr)
  {
      id = newid;
      _Appliance = app;
  }

 AppliancePtr::AppliancePtr()
  {
        id = -1;
        _Appliance = nullptr;
  }

AppliancePtr::~AppliancePtr(){
    //delete stuff;
}

  Appliance* AppliancePtr::operator->() {
    if(_Appliance == nullptr){
        LoadFromFile();
      }
      return _Appliance;
	}

  Appliance& AppliancePtr::operator*() {
      if(_Appliance == nullptr){
          LoadFromFile();
      }
      return *_Appliance;
  }

void AppliancePtr::LoadFromFile(){
    
    string filename = "appliance" + to_string(id) + ".txt";
    std::ifstream file(filename, std::ifstream::in);
    
    
    string file_id;
    string file_type;
    string file_manufac;
    string file_price;
    vector<string> _picArray;
    
    
    if(!file.good()){
        cout <<"ERROR with reading from text file " << id << endl;
        return;
    }
    
    getline(file,file_id);
    getline(file,file_type);
    getline(file,file_manufac);
    getline(file,file_price);
    
    
    for (string file_pics; getline(file, file_pics); )
    {
        _picArray.push_back(file_pics);
    }
    
//    char arr[file_pics.length() + 1];
//    strcpy(arr, file_pics.c_str());
    
    _Appliance = new Appliance(stoi(file_id), file_type, file_manufac, stod(file_price), _picArray);
    //cout<<id<<endl<<title<<endl<<artist<<endl;
    file.close();
}

void AppliancePtr::WriteToFile(){
    
    int isInMemory = this->isInMemory();
    
    if(_Appliance == nullptr){
        //cout << "File is not loaded yet" << endl;
        return;
    }
    
    string filename = "appliance" + to_string(id) + ".txt";
    std::ofstream file(filename, std::ofstream::out| std::ofstream::trunc);
    
    
    if(!file.good()){
        cout <<"ERROR with reading from text file " << id << endl;
        return;
    }
    
    file << to_string(_Appliance->getID()) << endl;
    file << _Appliance->getType() << endl;
    file << _Appliance->getManufac() << endl;
    file << to_string(_Appliance->getPrice());
    vector<string> _pics = _Appliance->getPics();
    
    for (int i=0; i<_pics.size(); i++)
        file << endl << _pics[i];
    
    if(isInMemory == 0) this->removeApplianceFromMemory();
    
    file.close();
}

//void AppliancePtr::updatePrice(double newPrice){
//    if(_Appliance != nullptr){
//        _Appliance->setPrice(newPrice);
//    }
//    else{
//        //Should not reach here
//        cout << "Warning: Should not get here" << endl;
//        LoadFromFile();
//        if((_Appliance) != nullptr) _Appliance->setPrice(newPrice);
//        removeApplianceFromMemory();
//    }
//}

//void AppliancePtr::updateAll(string type, string manufac, double newPrice, vector<string> pictures){
//    int removeFromMemory = 0;
//    
//    if(_Appliance == nullptr){
//        cout << "Warning: Should not get here" << endl;
//        LoadFromFile();
//        removeFromMemory = 1;
//    }
//    else{
//        _Appliance->setPrice(newPrice);
//        _Appliance->setType(type);
//        _Appliance->setManufac(manufac);
//        _Appliance->setPics(pictures);
//        WriteToFile();
//    }
//
//    if(removeFromMemory == 1) removeApplianceFromMemory();
//}

void AppliancePtr::removeApplianceFromMemory(){
    if(_Appliance == nullptr){
        cout << "Appliance not in memory" << endl;
        return;
    }
    
    //WriteToFile();
    _Appliance = nullptr;
    return;
}

//void AppliancePtr::printApplication(){
//    if(_Appliance != nullptr){
//        _Appliance->printAppliance();
//    }
//    else{
//        LoadFromFile();
//        if((_Appliance) != nullptr) _Appliance->printAppliance();
//        removeApplianceFromMemory();
//    }
//}

int AppliancePtr::getID(){
    return id;
}

int AppliancePtr::isInMemory(){
    if(_Appliance == nullptr){
        return 0;
    } else {
        return 1;
    }
}



    
