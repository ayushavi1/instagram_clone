import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home:Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child:
            Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      child: Center(
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                              height: 80.0,
                              child: Image(
                                  image: AssetImage('assets/instagramlogo.jpg')
                              )
                          )
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0.0, 140.0, 0.0, 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 150.0, vertical: 10.0),
                          child: Text('Log in'),

                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 50.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 142.0, vertical: 10.0),
                          child: Text('Sign Up'),
                        ),
                      )
                  )
                ]
            )
        )
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            icon: Icon(Icons.arrow_back_ios), color:Colors.black,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),

          backgroundColor:Colors.white,

        ),
        body:Container(
            child:
            Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      child:Center(
                          child:Container(
                              margin: EdgeInsets.fromLTRB(0.0, 100.0,0.0, 0.0),
                              height: 80.0,
                              child:Image(
                                  image: AssetImage('assets/instagramLogo.jpg')
                              )
                          )
                      )
                  ),
                  Container(
                      child:Container(
                          margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 15.0),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                          height: 45,
                          child:TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your Instagram Username',
                              labelText: 'Username',
                            ),
                          )
                      )

                  ),
                  Container(
                      child:Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                          height: 45,
                          child:TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your Instagram Password',
                              labelText: 'Password',
                            ),
                          )
                      )
                  ),
                  Container(
                      margin:EdgeInsets.symmetric(horizontal: 0.0,vertical: 30.0) ,
                      child:ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child:Container(
                          color: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 160.0,vertical: 10.0),
                          child: Text('Log in'),

                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0.0,vertical:30.0),
                    child: Text('OR'),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 90.0,vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text("Don't have an account?"),
                          ),
                          Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUp()),
                                  );
                                },
                                child: Text('Sign up.'),
                              )
                          ),

                        ],

                      )

                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 10.0),
                    child: Text("Instagram OT Facebook"),
                  ),
                ]
            )
        )
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            icon: Icon(Icons.arrow_back_ios), color:Colors.black,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),

          backgroundColor:Colors.white,

        ),
        body: Container(
            child:
            Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      child: Center(
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                              height: 60.0,
                              child: Image(
                                  image: AssetImage(
                                      'assets/instagramLogo.jpg')
                              )
                          )
                      )
                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your Instagram Username',
                              labelText: 'Username',
                            ),
                          )
                      )

                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your Instagram Password',
                              labelText: 'Password',
                            ),
                          )
                      )
                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Confirm Your Password',
                              labelText: 'Confirm Password',
                            ),
                          )
                      )
                  ),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 0.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your Email ID',
                              labelText: 'Email ID',
                            ),
                          )
                      )
                  ),

                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 150.0, vertical: 10.0),
                          child: Text('Sign Up'),

                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0.0,50.0, 0.0, 20),
                    child: Text('OR'),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 90.0, vertical: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text("Have an account?"),
                          ),
                          Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Login()),
                                  );
                                },
                                child: Text('Log in.'),
                              )
                          )
                        ],

                      )

                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50.0, 120.0, 50.0, 10.0),
                    child: Text("Instagram OT Facebook"),
                  ),
                ]
            )
        )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool liked = false;
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          color: Colors.white,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              SizedBox(width:10.0),
              IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined,color:Colors.black )),
              SizedBox(width:100.0),
              Image.asset('instagramLogo.jpg', height:140,width:90),
              SizedBox(width:60.0),
              IconButton(onPressed: (){}, icon:Icon(Icons.video_call_outlined,color:Colors.black )),
              SizedBox(width:10.0),
              IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InstaDM()),
                );
              }, icon:Icon(Icons.send_sharp,color:Colors.black )),
            ],
          ),

        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notification()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),
      body:ListView(
        scrollDirection: Axis.vertical,
        children:<Widget>[
          Container(
              height: 85.0,
              decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(width: 0.1,color: Colors.black12))
              ),
              child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story1.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story2.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story3.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story4.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story2.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story3.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story4.jpg')
                        )
                    ),
                    Container(
                        width: 85.0,
                        child: Image(
                            image: AssetImage('Story2.jpg')
                        )
                    ),
                  ]
              )
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
              liked
              ? Icons.favorite
              : Icons.favorite_border,
              color:
              liked ? Colors.red : Colors.black26,
            ),
              onPressed: () {
                _pressed();
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(

                      backgroundColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                      content: Text(
                        'You have liked the post', style: TextStyle(color: Colors.blue ) )));
              }),
                Container(
                  width: 20,
                    height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
            ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:70,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:35,width:35),
                SizedBox(width:10),
                Text('joshua_l\n'
                    'Tokyo, Japan', style: TextStyle(
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          Container(
            height: 400,
            width:400,
            decoration:BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width:0.5,
              ),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(
                      'InstaPost.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            height:35,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                  liked ? Colors.red : Colors.black26,
                ),
                    onPressed: () {
                      _pressed();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(

                          backgroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                          content: Text(
                              'You have liked the post', style: TextStyle(color: Colors.blue ) )));
                    }),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(5.5, 6, 5, 0),
                  child: Image.asset('Message.jpg',),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(8.5, 6, 5, 0),
                  child: Image.asset('Share.jpg'),
                )
              ],
            ),
          ),
          Container(
            height:50,
            child: Row(
              children:<Widget> [
                SizedBox(width:10),
                Image.asset('Story2_Crop.jpg', height:20,width:20),
                SizedBox(width:10),
                Text('Liked by craig_love and 45,555 others', style: TextStyle(fontWeight: FontWeight.w500)

                ),
              ],
            ),
          ),
          Container(
            child: Text('joshua_l The game in Japan was amazing and I want to\nshare some photos.', style: TextStyle(fontWeight: FontWeight.w500)),
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),

    );
  }
}
class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey[100],
          automaticallyImplyLeading: false,
        title: Container(width: double.infinity,
            decoration: BoxDecoration(

            ),
            height: 45,
            margin: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
            padding: EdgeInsets.fromLTRB(0,5,40,5),


          child: TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              fillColor: Colors.grey[300],
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              hintText: ' ',
              labelText: 'Search',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/live.jpg',
                  width: 20,
                  height: 20,
                  fit: BoxFit.fill,
                ),
              ),

            )
        )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notification()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),
      body:GridView.count(crossAxisCount: 3,crossAxisSpacing: 5.0,mainAxisSpacing: 0.0,
          children:[
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
          ]
      ),

    );

  }
}

class InstaDM extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('jacob_w', style: TextStyle(
                color: Colors.black
            ),
            ),
            IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: null,
            ),
          ],
        ),

          foregroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: Icon(Icons.arrow_back_ios), color:Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add), color:Colors.black,
            ),
          ],

          iconTheme: IconThemeData(
            color: Colors.black,
          ),

        backgroundColor: Colors.grey[100],

        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200]
            ),
            height: 45,
            margin: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              hintText: ' ',
              labelText: 'Search',

          )
          )),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 13m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 25m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 33m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 40m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 55m ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 2h ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 3h ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 6h ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 9h ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 15h ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 1 day ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 3 days ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Active 1 week ago'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Profile_Photo.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),

          ],


        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.camera_alt,
              size: 30,
              color: Colors.blue,
            ),
            Text(
              ' Camera',
              style: TextStyle(color: Colors.blue,fontSize: 20),
            )
          ],
        ),
      ),


    );
  }
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(250, 250, 250, 1),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    child: Image.asset('Tab1.jpg'),
                  ),
                  Container(
                    child: Image.asset('Tab2.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              child: Image.asset('Title.jpg'),
            ),
            Container(
              child: Image.asset('New.jpg'),
            ),
            Container(
              child: Image.asset('Today.jpg'),
            ),
            Container(
              child: Image.asset('This_Week.jpg'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 290, 5),
              child: Text(
                'This Month',
                style: TextStyle(
                  color: Color.fromRGBO(38, 38, 38, 1),
                ),
              ),
            ),
            Container(
              child: Image.asset('This_Month.jpg'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notification()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }, icon:Icon(Icons.home_filled,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }, icon:Icon(Icons.search_rounded,
                color:Colors.black87)),
            label: ' ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon:Icon(Icons.medical_services,
                color:Colors.black87)),
            label: '  ',
          ),   BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notification()),
              );
            }, icon:Icon(Icons.favorite_border_outlined,
                color:Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }, icon:Icon(Icons.person,
                color:Colors.black87)),
            label: '  ',
          ),

        ],
      ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child:Column(
            children: <Widget>[
              Row(
                children:<Widget> [
                  SizedBox(width:140),
                  IconButton(onPressed: (){}, icon:Icon(Icons.lock,color:Colors.black )),
                  Text('jacob_w',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
                  IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_down_outlined,color:Colors.black )),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children:<Widget> [
                  SizedBox(width:10),
                  Image.asset('Story2_Crop.jpg',width: 90,height: 90,),
                  SizedBox(width:30),
                  Text('54             834             162\nPosts      Followers      Following',
                    style: TextStyle(
                        fontSize: 18.0
                    ),),
                ],
              ),
              SizedBox(height:20),
              Row(
                children:<Widget> [
                  SizedBox(width:10),
                  Text('Jacob West\nDigital goodies designer @pixellz\nEverything is designed.',
                    style: TextStyle(
                        fontSize: 15.0
                    ),)
                ],
              ),
              SizedBox(height:20),
              Row(
                children:<Widget> [
                  SizedBox(width:20),
                  SizedBox(
                      width: 375,
                      height: 40,
                      child:ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),

                        ),
                        child: Text('Edit Profile', style: TextStyle(
                            color: Colors.black
                        ),),
                      )
                  ),
                ],
              ),
            ],
          )


      ),
      body:GridView.count(crossAxisCount: 3,crossAxisSpacing: 5.0,mainAxisSpacing: 0.0,
          children:[
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
            Image.asset('Grid1.jpg'),
            Image.asset('Grid2.jpg'),
            Image.asset('Grid3.jpg'),
            Image.asset('Grid4.jpg'),
          ]
      ),
    );

  }
}