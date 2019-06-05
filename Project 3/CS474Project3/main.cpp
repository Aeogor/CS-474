//
//  main.cpp
//  CS474Project3
//
//  Created by Srinivas Lingutla on 4/20/18.
//  Copyright © 2018 Srinivas Lingutla. All rights reserved.
//

#include <iostream>
#include <string>
#include "linkedlist.hpp"

using namespace std;

void printInstructions(){
    cout << "---------------Instructions-----------------" << endl;
    cout << "l     - List All Appliances" << endl;
    cout << "0...9 - Edit an Appliance" << endl;
    cout << "c     - Create an Appliances" << endl;
    cout << "p     - Change Current Appliance Price" << endl;
    cout << "s     - Save All Appliances" << endl;
    cout << "q     - Quit the Appliance Manager" << endl;
    cout << "m     - Print Memory contents in order of ID" << endl;
    cout << "--------------------------------------------" << endl;

}

char getInstruction(){
    char command = ' ';
    cout << endl << "Input: ";
    cin >> command;
    return command;
    
}

int main(int argc, const char * argv[]) {

    list *Appliances = new list();
    Appliances->initialize();
    char command = ' ';
    
    printInstructions();
    command = getInstruction();
    while (command != 'q'){
        if(command == 'l'){
            cout << "Printing Everything" << endl;
            Appliances->printAll();
        }
        
        else if(command == 'm'){
            cout << "Printing only Memory" << endl;
            Appliances->printOnlyMemory();
        }
        
        else if(command == '0' ||
                command == '1' ||
                command == '2' ||
                command == '3' ||
                command == '4' ||
                command == '5' ||
                command == '6' ||
                command == '7' ||
                command == '8' ||
                command == '9'){
            Appliances->replaceAnAppliance((int)command - '0');
        }
        
        else if(command == 'c'){
            cout << "Creating new Appliance" << endl;
            int newID = -1;
            string type;
            string manufacturer;
            double price;
            vector<string> pictures;
            char userInput[100];
            
            
            cout << "Enter an ID (0-9)";
            
            cin >> newID;
            
            while (newID < 0 || newID > 9) {
                cin >> newID;
            }
            
            cout << "Enter the type: " ;
            cin >> type;
            
            cout << "Enter the manufacturer: ";
            cin >> manufacturer;
            
            cout << "Enter the price: ";
            cin >> price;
            
            cout << "Enter the pictures filepaths (Press enter to exit out): ";
            cin.ignore(numeric_limits<streamsize>::max(),'\n');
            
            while (fgets(userInput, 100, stdin)) {
                strtok(userInput, "\n");
                
                if(strcmp(userInput, "\n") == 0) break;
                else if(strcmp(userInput, "") == 0) break;
                else {
                    string str(userInput);
                    pictures.push_back(str);
                }
                
                //cin.ignore(numeric_limits<streamsize>::max(),'\n');
                //fflush(stdin);
                cout << "Enter the pictures filepaths (Press enter to exit out): ";
            }
            
            Appliances->updateAppliance(newID, type, manufacturer, price, pictures);
            
        }
        
        else if (command == 'p'){
            double price;
            cout << endl << "Setting new price" << endl;
            cout << "Enter the new price: " ;
            cin >> price;
            //Appliances->findAppliance(Appliances->getCurrentAppliance());
            Appliances->updateCurrentPrice(price);
            
        }
        
        else if(command == 's'){
            cout << endl << "Saving all appliances" << endl;
            Appliances->saveAll();
        }
        
        cout << endl << endl;
        cin.ignore(numeric_limits<streamsize>::max(),'\n');
        printInstructions();
        command = getInstruction();
        
    }
    
    cout << "Exiting the Appliance Manager..." << endl;

    return 0;
}
