//
//  linkedlist.cpp
//  CS474Project3
//
//  Created by Srinivas Lingutla on 4/20/18.
//  Copyright © 2018 Srinivas Lingutla. All rights reserved.
//

#include "linkedlist.hpp"



list::list()
{
    head=NULL;
    tail=NULL;
}
    
void list::newNode(int id){
    LLnode *newNode = new LLnode;
    AppliancePtr appliance(id, nullptr);
    newNode->app = appliance;
    newNode->next = nullptr;
    //declare new appliance pointer 
    //set it to the struct

    if(head == NULL){
        head = tail = newNode;
    }
    else{
        tail->next = newNode;
        tail = newNode;
    }
        
}

void list::initialize(){
    for(int i = 0; i < 10; ++i){
        newNode(i);
    }
    
    LLnode *temp = head;
    for(int i = 0; i < 3; ++i){
        (temp->app).LoadFromFile();
        temp = temp->next;
    }
    
    FirstApplianceInUse = 0;
    SecondApplianceInUse = 1;
    ThirdApplianceInUse = 2;
}

void list::replaceAnAppliance(int _id){
    
    LLnode *temp = head;
    int idToRemove = ThirdApplianceInUse;
    
    if(_id < 0 || _id > 9 ){
        cout << "Invalid Appliance Number" << endl;
        return;
    } else if (_id == FirstApplianceInUse ) {
        cout << "Appliance is already loaded into the memory, setting it as the main one" << endl;
        return;
    } else if (_id == SecondApplianceInUse ) {
        cout << "Appliance is already loaded into the memory, setting it as the main one" << endl;
        int temp = FirstApplianceInUse;
        FirstApplianceInUse = SecondApplianceInUse;
        SecondApplianceInUse = temp;
        return;
    } else if (_id == ThirdApplianceInUse ) {
        cout << "Appliance is already loaded into the memory, setting it as the main one" << endl;
        int temp = FirstApplianceInUse;
        FirstApplianceInUse = ThirdApplianceInUse;
        ThirdApplianceInUse = SecondApplianceInUse;
        SecondApplianceInUse = temp;
        return;
    }
    
    
    while(temp != nullptr){
        if(((temp->app).getID()) == _id){
            if((temp->app).isInMemory() == 1){
                cout << "Appliance is already loaded into the memory" << endl;
                return;
            }
            
            (temp->app).LoadFromFile();
            idToRemove = ThirdApplianceInUse;
            ThirdApplianceInUse = SecondApplianceInUse;
            SecondApplianceInUse = FirstApplianceInUse;
            FirstApplianceInUse = _id;
        }
        else if(((temp->app).getID()) == idToRemove){
            (temp->app).removeApplianceFromMemory();
        }
        
         temp = temp->next;
    }

//    if(temp == nullptr){
//        cout << "Invalid Appliance Number" << endl;
//        return;
//    }
    
//    } else if (((temp->app)->getID()) == _id){
//        if((temp->app).isInMemory() == 1){
//            cout << "Appliance is already loaded into the memory" << endl;
//            return;
//        }
//
//        (temp->app).LoadFromFile();
//        idToRemove = ThirdApplianceInUse;
//        ThirdApplianceInUse = SecondApplianceInUse;
//        SecondApplianceInUse = FirstApplianceInUse;
//        FirstApplianceInUse = _id;
//    }

//    AppliancePtr *app = findAppliance(_id);
//    if(app != nullptr){
//        if(app->isInMemory() == 1){
//            cout << "Appliance is already loaded into the memory" << endl;
//            return;
//        }
//        app->LoadFromFile();
//        idToRemove = ThirdApplianceInUse;
//        ThirdApplianceInUse = SecondApplianceInUse;
//        SecondApplianceInUse = FirstApplianceInUse;
//        FirstApplianceInUse = _id;
//    }
    
//   temp = head;
//
//    while(temp != nullptr){
//        if(((temp->app)->getID()) == idToRemove){
//            (temp->app).removeApplianceFromMemory();
//        }
//        else{
//            temp = temp->next;
//        }
//    }
//
//    if(temp == nullptr){
//        cout << "Invalid Third Appliance Number In Use" << endl;
//        return;
//    }
    
//    AppliancePtr *appToRemove = findAppliance(idToRemove);
//    if(appToRemove != nullptr){
//        appToRemove->WriteToFile();
//       (appToRemove)->removeApplianceFromMemory();
//    }
    

}

void list::printAll(){
    LLnode *temp = head;
    while(temp != nullptr){
        if(temp->app.isInMemory() == 1)
            (temp->app)->printAppliance();
        else {
            (temp->app)->printAppliance();
            temp->app.removeApplianceFromMemory();
        }
        temp = temp->next;
    }
}

void list::updateAppliance(int _id, string type, string manufac, double newPrice, vector<string> pictures){
    //replaceAnAppliance(_id);
    
    LLnode *temp = head;

    while(temp != nullptr){
        if(((temp->app).getID()) == _id){
            break;
        }
        else{
            temp = temp->next;
        }
    }

    if(temp == nullptr){
        cout << "Invalid Appliance Number" << endl;
        return;
    } else if (((temp->app).getID()) == _id){
        
        int isInMemory = (temp->app).isInMemory();
        (temp->app)->setPrice(newPrice);
        (temp->app)->setType(type);
        (temp->app)->setManufac(manufac);
        (temp->app)->setPics(pictures);
        (temp->app).WriteToFile();
        
        if(isInMemory == 0) (temp->app).removeApplianceFromMemory();
    }
    
    //replaceAnAppliance(_id);
//    AppliancePtr *app = findAppliance(_id);
//    
//    if(app != nullptr) app->updateAll(type, manufac, newPrice, pictures);
}
//
//AppliancePtr * list::findAppliance(int _id){
//    LLnode *temp = head;
//
//    while(temp != nullptr){
//        if(((temp->app)->getID()) == _id){
//            break;
//        }
//        else{
//            temp = temp->next;
//        }
//    }
//
//    if(temp == nullptr){
//        cout << "Invalid Appliance Number" << endl;
//        return nullptr;
//    } else if (((temp->app).getID()) == _id){
//        return &(temp->app);
//    } else
//        return nullptr;
//
//}

void list::updateCurrentPrice(double price){
    
    LLnode *temp = head;
    
    while(temp != nullptr){
        if(((temp->app).getID()) == FirstApplianceInUse){
            break;
        }
        else{
            temp = temp->next;
        }
    }
    
    if(temp == nullptr){
        cout << "Invalid Appliance Number" << endl;
        return;
    } else if (((temp->app).getID()) == FirstApplianceInUse){
        (temp->app)->setPrice(price);
    } else
        return;
    
//    AppliancePtr *app = findAppliance(FirstApplianceInUse);
//    if(app != nullptr) app->updatePrice(price);
}

void list::saveAll(){
    LLnode *temp = head;
    while(temp != nullptr){
        (temp->app).WriteToFile();
        temp = temp->next;
    }
}

int list::getCurrentAppliance(){
    return FirstApplianceInUse;
}

void list::printOnlyMemory(){
    LLnode *temp = head;
    while(temp != nullptr){
        if((temp->app).isInMemory() == 1)
            (temp->app)->printAppliance();
        temp = temp->next;
    }
}



