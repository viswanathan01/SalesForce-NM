// Create Sample Data for SwiftShip Tracker
Sender__c sender = new Sender__c(
    Name = 'John Doe',
    Sende_Contact__c = '9876543210',
    Sender_Email__c = 'sender.swiftship@example.com',
    Sender_Adress__Latitude__s = 13.0827,
    Sender_Adress__Longitude__s = 80.2707
);
insert sender;
System.debug('Sender created: ' + sender.Id);

Parcel__c parcel1 = new Parcel__c(
    Name = 'Electronics Gadget',
    Status__c = 'In Transit',
    Weight__c = 1.75,
    Estimated_Delivery_Date__c = Date.today().addDays(3),
    Sender__c = sender.Id
);
insert parcel1;
System.debug('Parcel 1 created: ' + parcel1.Id);

Parcel__c parcel2 = new Parcel__c(
    Name = 'Fashion Apparel',
    Status__c = 'Out for Delivery',
    Weight__c = 0.85,
    Estimated_Delivery_Date__c = Date.today().addDays(1),
    Sender__c = sender.Id
);
insert parcel2;
System.debug('Parcel 2 created: ' + parcel2.Id);

Receiver__c receiver = new Receiver__c(
    Name = 'Jane Smith',
    Receiver_Contact__c = '9123456780',
    Receiver_Email__c = 'receiver.swiftship@example.com',
    Receiver_Adress__Latitude__s = 12.9716,
    Receiver_Adress__Longitude__s = 77.5946,
    Sender__c = sender.Id,
    Parcel__c = parcel1.Id
);
insert receiver;
System.debug('Receiver created: ' + receiver.Id);

Delivery__c delivery = new Delivery__c(
    Name = 'Delivery DL-101',
    Current_Location__Latitude__s = 13.0827,
    Current_Location__Longitude__s = 80.2707,
    Estimated_Delivery_Date__c = Date.today().addDays(3),
    Sender__c = sender.Id,
    Parcel__c = parcel1.Id
);
insert delivery;
System.debug('Delivery created: ' + delivery.Id);
