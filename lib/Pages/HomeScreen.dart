import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utopia/Constants/ConstantColor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  var width = 0.0;
  var height = 0.0;
  TabController _tabController;
  var index = 3;
  final _value = .5;
  final _iconSize = 40;
  String initialCountry = 'JE';
  String parsableNumber;
  bool colorChange = true;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: index, initialIndex: 1);

    if(_tabController.index==1)
    {
      colorChange = true;
    }
    else if(_tabController.index==0)
    {
      colorChange = false;
    }
    else if(_tabController.index==2)
    {
      colorChange = false;
    }
    else{
      colorChange = true;

    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();


  }


  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                color: ConstantColor.BACKGROUND,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Image.asset(
                          "assets/bunny.png",
                          height: 40,
                          width: 50,
                        )),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Sign in To Utopia",
                              style: TextStyle(
                                  color: ConstantColor.FONT_COLOR,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Welcome back! Sign in to get into your account",
                              style: TextStyle(color: ConstantColor.FONT_COLOR),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Theme(
                              data: ThemeData(
                                  backgroundColor: Colors.white,
                                  hintColor: Colors.green),
                              child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 10),
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey[100]),
                                    hintText: 'Email/Phone',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "You can always change this later!",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: ConstantColor.BUTTON_COLOR),
                                ),
                              ],
                            ),
                            Theme(
                              data: ThemeData(
                                  backgroundColor: Colors.white,
                                  hintColor: Colors.green),
                              child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    counterText: "",
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey[100]),
                                    hintText: 'Password',
                                    contentPadding:
                                        EdgeInsets.only(left: 10, top: 15),
                                    suffixIcon: Icon(
                                      Icons.remove_red_eye,
                                      color: ConstantColor.FONT_COLOR,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              child: MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                color: ConstantColor.BUTTON_COLOR,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Sign up",
                                        style: TextStyle(
                                            color: ConstantColor.FONT_COLOR),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: ConstantColor.FONT_COLOR,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Forget Password?",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: ConstantColor.FONT_COLOR),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 50),
                                child: circlesForSignIn()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: ConstantColor.FONT_COLOR,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 2, child: Image.asset("assets/blueBunny.png")),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Welcome To Utopia",
                              style: TextStyle(
                                  color: ConstantColor.BUTTON_COLOR,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Fewer meeting, less internal emails, all your tools integrated.",
                              style:
                                  TextStyle(color: ConstantColor.BUTTON_COLOR),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 200,
                            height: 50,
                            child: MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              color: ConstantColor.BUTTON_COLOR,
                              child: Text(
                                "Sign up",
                                style:
                                    TextStyle(color: ConstantColor.FONT_COLOR),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: 200,
                            height: 55,
                            child: MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(
                                      color: ConstantColor.BUTTON_COLOR)),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: ConstantColor.BUTTON_COLOR),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 50),
                              child: circles()),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Scaffold(
                body: Container(
                  color: ConstantColor.BACKGROUND,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Stack(children: [
                          Container(
                            margin: EdgeInsets.only(top: 80),
                            width: 300,
                            height: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                )),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              child: LinearProgressIndicator(
                                  value: _value,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                  backgroundColor: Colors.transparent,
                                  minHeight: 15),
                            ),
                          ),
                          LayoutBuilder(builder: (context, constrains) {
                            //5 is just the right padding
                            var leftPadding =
                                constrains.maxWidth * _value - _iconSize - 40;
                            var topPadding =
                                (constrains.maxHeight - _iconSize) / 1.8 ;
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: leftPadding, top: topPadding),
                              child: Image.asset("assets/bunny.png",
                                  height: _iconSize.toDouble(),
                                  width: _iconSize.toDouble()),
                            );
                          })
                        ]),
                        // child: Column(
                        //     children: [
                        //
                        //
                        //         // child: Stack(
                        //         //   children: [
                        //         //     ClipRRect(
                        //         //       borderRadius: BorderRadius.all(Radius.circular(10),
                        //         //       ),
                        //         //       child: LinearProgressIndicator(
                        //         //         value: 0.0,
                        //         //         valueColor: AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                        //         //         backgroundColor: Colors.transparent,
                        //         //         color: ConstantColor.FONT_COLOR,
                        //         //       ),
                        //         //     ),
                        //         //     Container(
                        //         //       padding: EdgeInsets.only( top: 80, left: 34),
                        //         //       child: Image.asset("assets/bunny.png",height: 30,width: 40,),
                        //         //     )
                        //         //   ],
                        //         // ),
                        //
                        //
                        //     ]
                        // ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Sign up To Utopia",
                                style: TextStyle(
                                    color: ConstantColor.FONT_COLOR,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 60),
                                child: Text(
                                  "Fewer meeting, less internal email, all your tools integrated.",
                                  style: TextStyle(
                                      color: ConstantColor.FONT_COLOR),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              NestedTabBar(),
                              Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: circlesForSignUp()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // child: TabBarView(
          //   controller: _tabController,
          //   children: myTabs.map((Tab tab) {
          //     return new Container(
          //         height: double.maxFinite,
          //         width: double.maxFinite,
          //         child: tab);
          //   }).toList(),
          // ),
          // children: <Widget>[
          //   Container(),
          //   Container(),
          // ]
        ),
      ),
    );


  }


  Widget circles()
  {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.BUTTON_COLOR.withOpacity(0.5): ConstantColor.BUTTON_COLOR
            ),
          ),
        ),
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            margin: EdgeInsets.only(left: 5),

            width: 9,
            height: 9,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.BUTTON_COLOR: ConstantColor.BUTTON_COLOR.withOpacity(0.5)
            ),
          ),
        ),
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            margin: EdgeInsets.only(left: 5),

            width: 7,
            height: 7,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.BUTTON_COLOR.withOpacity(0.5): ConstantColor.BUTTON_COLOR
            ),
          ),
        ),

      ],
    );
  }

  Widget circlesForSignIn()
  {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            width: 9,
            height: 9,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.FONT_COLOR: ConstantColor.BUTTON_COLOR
            ),
          ),
        ),
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            margin: EdgeInsets.only(left: 5),

            width: 7,
            height: 7,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.BUTTON_COLOR: ConstantColor.FONT_COLOR
            ),
          ),
        ),
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            margin: EdgeInsets.only(left: 5),

            width: 7,
            height: 7,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.FONT_COLOR: ConstantColor.BUTTON_COLOR
            ),
          ),
        ),

      ],
    );
  }

  Widget circlesForSignUp()
  {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.FONT_COLOR: ConstantColor.BUTTON_COLOR
            ),
          ),
        ),
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            margin: EdgeInsets.only(left: 5),

            width: 7,
            height: 7,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.BUTTON_COLOR: ConstantColor.FONT_COLOR
            ),
          ),
        ),
        GestureDetector(
          onTap:() => _tabController.animateTo((_tabController.index + 1) % 3),
          child: Container(
            margin: EdgeInsets.only(left: 5),

            width: 9,
            height: 9,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorChange ? ConstantColor.FONT_COLOR: ConstantColor.BUTTON_COLOR
            ),
          ),
        ),

      ],
    );
  }

// _handleTabSelection() {
//   setState(() {
//     index = _tabController.index;
//   });
// }
}

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String trueNumber = "+44";
  TabController _nestedTabController;
  int nestedIndex = 2;

  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: nestedIndex, vsync: this, initialIndex: 0);
    setState(() {
      nestedIndex = _nestedTabController.index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 35,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: ConstantColor.BUTTON_COLOR),
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _nestedTabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: ConstantColor.BUTTON_COLOR,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Phone',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Email',
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight * 0.30,
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TabBarView(
                controller: _nestedTabController,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Form(
                                  key: formKey,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    height: 15,
                                    width: 60,
                                    child: CountryCodePicker(
                                      onChanged: (c) => {
                                        setState(() {
                                          trueNumber = c.dialCode;
                                          print(trueNumber);
                                        })
                                      },
                                      textStyle: TextStyle(
                                          color: ConstantColor.FONT_COLOR),
                                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                      initialSelection: 'JE',
                                      favorite: ['+44', 'JE'],
                                      // optional. Shows only country name and flag
                                      showCountryOnly: false,
                                      showFlag: false,
                                      // optional. Shows only country name and flag when popup is closed.
                                      showOnlyCountryWhenClosed: false,
                                      // optional. aligns the flag and the Text left
                                      alignLeft: false,
                                    ),
                                  )),
                              Container(
                                  child: VerticalDivider(
                                width: 2,
                                thickness: 1,
                                indent: 9,
                                endIndent: 5,
                                color: ConstantColor.FONT_COLOR,
                              )),
                              Container(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      border: InputBorder.none,
                                      hintText: 'Phone Number',
                                      contentPadding:
                                          EdgeInsets.only(left: 15, bottom: 5),
                                      counterText: "",
                                      hintStyle: TextStyle(
                                          color: ConstantColor.FONT_COLOR)
                                      // prefix: Padding(
                                      //   padding: EdgeInsets.all(4),
                                      //   child: Text('+92'),
                                      // ),
                                      ),
                                  style: TextStyle(
                                      color: ConstantColor.FONT_COLOR),
                                  maxLength: 15,
                                  keyboardType: TextInputType.number,
                                  controller: _controller,
                                ),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              padding: EdgeInsets.only(right: 60, left: 40),
                              child: Divider(
                                thickness: 1,
                                color: ConstantColor.FONT_COLOR,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Container(
                                  // padding: EdgeInsets.only(left: 20, right: 5),
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ConstantColor.FONT_COLOR),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.done,
                                    size: 10,
                                    color: ConstantColor.FONT_COLOR,
                                  ))),
                              Container(
                                padding: EdgeInsets.only(left: 7),
                                child: Text(
                                  "I agree with Terms and privacy policy",
                                  style: TextStyle(
                                      color: ConstantColor.BUTTON_COLOR),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 200,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {

                              setState(() {
                                _nestedTabController.animateTo((_nestedTabController.index + 1) % 2);
                                // if(nestedIndex==1)
                                //   {
                                //    _nestedTabController.index++;
                                //   }
                                // else
                                //   {
                                //     _nestedTabController.index;
                                //   }

                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: ConstantColor.BUTTON_COLOR,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Get Code",
                                    style: TextStyle(
                                        color: ConstantColor.FONT_COLOR),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: ConstantColor.FONT_COLOR,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                border: InputBorder.none,
                                hintText: 'Enter Email',
                                contentPadding:
                                    EdgeInsets.only(left: 15, bottom: 5),
                                counterText: "",
                                hintStyle:
                                    TextStyle(color: ConstantColor.FONT_COLOR)
                                // prefix: Padding(
                                //   padding: EdgeInsets.all(4),
                                //   child: Text('+92'),
                                // ),
                                ),
                            style: TextStyle(color: ConstantColor.FONT_COLOR),
                            maxLength: 15,
                            keyboardType: TextInputType.number,
                            controller: _controller,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              padding: EdgeInsets.only(right: 60, left: 40),
                              child: Divider(
                                thickness: 1,
                                color: ConstantColor.FONT_COLOR,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Container(
                                  // padding: EdgeInsets.only(left: 20, right: 5),
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ConstantColor.FONT_COLOR),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.done,
                                    size: 10,
                                    color: ConstantColor.FONT_COLOR,
                                  ))),
                              Container(
                                padding: EdgeInsets.only(left: 7),
                                child: Text(
                                  "I agree with Terms and privacy policy",
                                  style: TextStyle(
                                      color: ConstantColor.BUTTON_COLOR),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),

                        Container(
                          width: 200,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: ConstantColor.BUTTON_COLOR,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        color: ConstantColor.FONT_COLOR),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: ConstantColor.FONT_COLOR,
                                    ))
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
