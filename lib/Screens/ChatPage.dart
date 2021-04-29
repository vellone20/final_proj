import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:contacts_service/contacts_service.dart';

//trying to get access to contacts on phone
// class ChatPage extends StatefulWidget {
//   ChatPage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatPage> {
//   List<Contact> contacts = [];
//   List<Contact> contactsFiltered = [];
//   Map<String, Color> contactsColorMap = new Map();
//   TextEditingController searchController = new TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     getPermissions();
//   }
//
//   getPermissions() async {
//     getAllContacts();
//     searchController.addListener(() {
//       filterContacts();
//     });
//   }
//
//   String flattenPhoneNumber(String phoneStr) {
//     return phoneStr.replaceAllMapped(RegExp(r'^(\+)|\D'), (Match m) {
//       return m[0] == "+" ? "+" : "";
//     });
//   }
//
//   getAllContacts() async {
//     List colors = [
//       Colors.green,
//       Colors.indigo,
//       Colors.yellow,
//       Colors.orange
//     ];
//     int colorIndex = 0;
//     List<Contact> _contacts = (await ContactsService.getContacts()).toList();
//     _contacts.forEach((contact) {
//       Color baseColor = colors[colorIndex];
//       contactsColorMap[contact.displayName] = baseColor;
//       colorIndex++;
//       if (colorIndex == colors.length) {
//         colorIndex = 0;
//       }
//     });
//     setState(() {
//       contacts = _contacts;
//     });
//   }
//
//   filterContacts() {
//     List<Contact> _contacts = [];
//     _contacts.addAll(contacts);
//     if (searchController.text.isNotEmpty) {
//       _contacts.retainWhere((contact) {
//         String searchTerm = searchController.text.toLowerCase();
//         String searchTermFlatten = flattenPhoneNumber(searchTerm);
//         String contactName = contact.displayName.toLowerCase();
//         bool nameMatches = contactName.contains(searchTerm);
//         if (nameMatches == true) {
//           return true;
//         }
//
//         if (searchTermFlatten.isEmpty) {
//           return false;
//         }
//
//         var phone = contact.phones.firstWhere((phn) {
//           String phnFlattened = flattenPhoneNumber(phn.value);
//           return phnFlattened.contains(searchTermFlatten);
//         }, orElse: () => null);
//
//         return phone != null;
//       });
//     }
//     setState(() {
//       contactsFiltered = _contacts;
//     });
//   }




///////////////////////////////////////////////////////////////////////////////

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:ChatPageWidget()),);
  }
}

class ChatPageWidget extends StatefulWidget {
  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State <ChatPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.red,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
