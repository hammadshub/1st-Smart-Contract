//SPDX-License-Identifier: MIT

pragma solidity 0.8.18; 

    contract SimpleStorage{     

     // Basic Types: boolean , unit ->unsigned integer(Positive whole no.), int (either +ve or -ve any),address , bytes
        //int and int256 are same because int has 256 in default
        //uint favouriteNumber = 12;
        // bool hasFavouriteNumber = true;
        // string hasFavouritText = "First lesson";
        // int256 FavouriteInt= -12;
        // address myAddress= 0x8F4D9BE69A86E466e0B6A812BCE20661484EbE0a;
        // bytes32 favouriteeByte32 = "caat";  ///same as string   // maximum bytes are 32
       


        uint public myfavouriteNumber = 12;   //  myfavouriteNumber <---- is implicitly a storage variable

                                                       // virtual means we can override function
         function store(uint256 _favouriteNumber) public virtual  {
             myfavouriteNumber = _favouriteNumber;  // + 5
         }
      
         
       
       // view , pure  these functions only consumes gas when calling into another function , here in this , they are not consuming any gas

       // string is an array of bytes so it needs memory or calldata keyword

       function retrieve() public view returns(uint256){
              return myfavouriteNumber;
          }
       


        // Arrays

        
        // unit256[] List of FavoriteNum;
        // strut  --> in which we can create our own type
        
         struct Person {
             uint256 favouriteNumber;
             string name;
         }


    //    Person public pat = Person({favouriteNumber: 7, name:"Pat"});
    //    Person public mariah = Person(3 , "Mariah") ; //same thing as above line
    //    Person public jon = Person({favouriteNumber:9, name: "Jon"}) ; //same thing as above line
           
           //best way

     //   //static array
    //   Person[3] public listPeople; //[]


      //dynamic array
      Person[] public listOfPeople; //[]

      //memory , calldata ,storage 

     // calldata  is a temporary veriable that can not modified
     // memmory is a temporary variable that can be modified
     //stoage is a permanent variable that can be modified

      function addPerson(string memory _name, uint256 _favoriteNumber) public {
          listOfPeople.push(Person(_favoriteNumber, _name));
         nametoFavoriteNum[_name]= _favoriteNumber;
      }
    


       //Mapping
          mapping(string=>uint256) public nametoFavoriteNum;



    }