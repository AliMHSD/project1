import 'package:untitled2/Service.dart';
import 'package:untitled2/Media.dart';
import 'package:untitled2/Certificate.dart';
import 'package:untitled2/Courses.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wahajorg'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Courses()));
              },
              child: Container(
                padding: const EdgeInsets.all(35),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(79, 117, 147, 1),
                      width: 4 ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [ BoxShadow(
                    color: Color(0xffc0a071),
                    offset: Offset(4, 4),),],
                ),
                child: const Text(
                  'Courses',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,),),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Certificate()));
              },
              child: Container(
                  padding: const EdgeInsets.all(35),
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(79, 117, 147, 1),
                        width: 4 ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [ BoxShadow(
                      color: Color(0xffc0a071),
                      offset: Offset(4, 4),),],
                  ),
                  child: const Text(
                    'Certificate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,),),
                ),
              ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Media()));
              },
              child:Container(
                padding: const EdgeInsets.all(35),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(79, 117, 147, 1),
                      width: 4 ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [ BoxShadow(
                    color: Color(0xffc0a071),
                    offset: Offset(4, 4),),],
                ),
                child: const Text(
                  'Media',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,),),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Service()));
              },
              child:Container(
                padding: const EdgeInsets.all(35),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(79, 117, 147, 1),
                      width: 4 ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [ BoxShadow(
                    color: Color(0xffc0a071),
                    offset: Offset(4, 4),),],
                ),
                child: const Text(
                  'Service',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,),),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(accountName: Text('Ali Mosa',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffc0a071)
              ),
            ),
              accountEmail: Text('aliiq831@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: NetworkImage('data:image/jpeg;base64,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'
                ),)
              ],
            ),
            ListTile(
              title: Text('sent'),
              leading: Icon(Icons.send),),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),),
            Divider(thickness: 4,),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),),
            ListTile(
              title: Text('Updates'),
              leading: Icon(Icons.update),),
            ListTile(
              title: Text('Community'),
              leading: Icon(Icons.people),),
            Divider(thickness: 4,),
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffc0a071),
        onPressed: (){

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
