import 'package:flutter/material.dart';
List<String> titles = <String>[
  'Cloud',
  'Beach',
  'Sunny',
];
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'This is my first app';
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: DefaultTabController(
        length:2,
        child: Scaffold(
          // body: Image.asset('assets/images/flutter.png'),
          //
          appBar: AppBar(
            // toolbarHeight: 120,
            leading: const BackButton(
              color: Colors.white,
            ),
            centerTitle: true,
            title: const Text(appTitle),

            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
              //list if widget in appbar actions
              // PopupMenuButton(
              //   icon: Icon(Icons.menu),  //don't specify icon if you want 3 dot menu
              //   color: Colors.white,
              //   itemBuilder: (context) => [
              //     // PopupMenuItem<int>(
              //     //   value: 0,
              //     //   child: Text("Setting",style: TextStyle(color: Colors.white),),
              //     // ),
              //   ],
              //   // onSelected: (item) => {print(item)},
              // ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'SignIn',
                  icon: Icon(Icons.login_rounded),),
                Tab(text: 'Register',
                  icon: Icon(Icons.app_registration),),
                //more tabs here
              ],
            ),
          ),

          body: const MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {

  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.network(
                  'https://logowik.com/content/uploads/images/flutter5786.jpg',
                  height: 200,
                  width: 200,
                ),
              ),// Image.asset


              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                      child: Icon(Icons.mail),
                    ),
                    border: OutlineInputBorder(
                      borderRadius:  BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(
                        width: 10,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(

                  obscureText:true,
                  decoration: const InputDecoration(

                    border: OutlineInputBorder(

                      borderRadius:  BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(
                        width: 10,
                        style: BorderStyle.none,
                      ),
                    ),
                    labelText: 'Password',
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                      child: Icon(Icons.lock),
                    ),
                  ),
                ),
              ),
              Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 8),
                  child:ElevatedButton(

                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  )
              ),
              // Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 0),
              //     Center(
              //       child: Text(
              //            style: TextStyle(fontStyle:FontStyle.normal,
              //            fontSize: 15),
              //          'Don\'t have an account?'
              //        ),
              // ),
              //     // ),
              //     // SizedBox(
              //     //  width:10,
              //     // ),
              //
              //     Center(
              //     child: InkWell(
              //         onTap: () {
              //           // Navigator.push(
              //           //   context,
              //           //   MaterialPageRoute(builder: (context) => const SignUpC()),
              //           // );
              //         },
              //         child: Text(
              //           'Signup',
              //           style: TextStyle(
              //               color: Colors.red,
              //               ),
              //         ),
              //        ),
              //     ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( 'Don\'t have an account?'),
                  Text("Signup",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.red,
                  ),),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}