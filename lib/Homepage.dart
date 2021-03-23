import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'OrderDetails.dart';

class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void goToOrderDetails(BuildContext context){
    Navigator.of(context).pushNamed(OrderDetails.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: GNav(
            haptic: true, // haptic feedback
            tabBorderRadius: 10,
             curve: Curves.easeOutExpo, // tab animation curves
             duration: Duration(milliseconds: 1000), // tab animation duration
            gap: deviceWidth* .01, // the tab button gap between icon and text
            color: Colors.grey[800], // unselected icon color
            activeColor: Colors.blue, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor: Colors.blue.withOpacity(0.1), // selected tab background color
             padding: EdgeInsets.symmetric(vertical: deviceWidth*.02,horizontal: deviceWidth*.05), // navigation bar padding
            tabs: [
              GButton(
                margin: EdgeInsets.only(bottom: deviceWidth* .04,left: deviceWidth* .05 ),
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                margin: EdgeInsets.only(bottom: deviceWidth* .04),
                icon: Icons.list_alt_outlined,
                text: 'Orders',
              ),
              GButton(
                margin: EdgeInsets.only(bottom: deviceWidth* .04),
                icon: Icons.attach_money_outlined,
                text: 'Cost',
              ),
              GButton(
                margin: EdgeInsets.only(bottom: deviceWidth* .04),
                icon: Icons.person_outline,
                text: 'Profile',
              )
            ]
        ),
body: SafeArea(
  child:   Container(
    width: deviceWidth,
    height: deviceHeight,
    padding: EdgeInsets.all(deviceWidth* .05),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Good Morning,',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
        SizedBox(height: deviceWidth* .035,),
        Text('Jennifer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
        SizedBox(height: deviceWidth* .035,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Today's Appointment" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            Text('View All' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

          ],
        ),
        SizedBox(height: deviceWidth* .035,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          primary: false,
          child: Row(
            children: [
              InkWell(onTap: (){
goToOrderDetails(context);
              },
                child: Container(
                  padding: EdgeInsets.all(deviceWidth* .05),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(radius: 25,backgroundColor: Colors.blue,child: Icon(Icons.person_outline,size: 30,),),
                            SizedBox(width: deviceWidth* .025,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Martin Lawrence',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                Text('10.30 AM',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                              ],
                            ),
                            SizedBox(width: deviceWidth* .1,),
                            Icon(Icons.location_on_outlined,size: 40,color: Colors.grey,)
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical:deviceWidth* .025),
                        width: deviceWidth* .7,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38)
                        ),
                      ),
                      Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Status',style: TextStyle(fontSize: 16,color: Colors.grey),),
                                SizedBox(height: deviceWidth* .025,),
                                Text('Arrived at Appointment',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                              ],
                            ),
                            SizedBox(width: deviceWidth* .1,),
                            Text('Update\nStatus',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: deviceWidth* .025,),
              InkWell(onTap: (){
                goToOrderDetails(context);
              },
                child: Container(
                  padding: EdgeInsets.all(deviceWidth* .05),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(radius: 25,backgroundColor: Colors.blue,child: Icon(Icons.person_outline,size: 30,),),
                            SizedBox(width: deviceWidth* .025,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Martin Lawrence',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                Text('10.30 AM',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                              ],
                            ),
                            SizedBox(width: deviceWidth* .1,),
                            Icon(Icons.location_on_outlined,size: 40,color: Colors.grey,)
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical:deviceWidth* .025),
                        width: deviceWidth* .7,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38)
                        ),
                      ),
                      Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Status',style: TextStyle(fontSize: 16,color: Colors.grey),),
                                SizedBox(height: deviceWidth* .025,),
                                Text('Arrived at Appointment',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                              ],
                            ),
                            SizedBox(width: deviceWidth* .1,),
                            Text('Update\nStatus',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )


        ),
        SizedBox(height: deviceWidth* .025,),
        Text('Pending Requests',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        SizedBox(height: deviceWidth* .025,),
        Text('Accept the order as soon as it comes. Order are assigned on first accepted basis.',style: TextStyle(fontSize: 16,color: Colors.grey),),
        SizedBox(height: deviceWidth* .025,),
        Flexible(
          child: ListView(
            children: [
              InkWell(onTap: (){
                goToOrderDetails(context);
              },
                child: Container(margin: EdgeInsets.only(bottom: deviceWidth*.025),
                  padding: EdgeInsets.all(deviceWidth* .05),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(radius: 25,backgroundColor: Colors.blue,child: Icon(Icons.person_outline,size: 30,),),
                            SizedBox(width: deviceWidth* .025,),
                            Expanded(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Refinance of Marin Lawrence',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),overflow: TextOverflow.ellipsis,),
                                  SizedBox(height: deviceWidth* .025,),
                                  Text('A short description of order with some short text.',style: TextStyle(color: Colors.grey),overflow: TextOverflow.visible,)
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth* .05,),
                            Text('\$125',style:
                              TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical:deviceWidth* .025),
                        width: deviceWidth,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38)
                        ),
                      ),
                      SizedBox(height: deviceWidth* .025,),
                      Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           Container(padding: EdgeInsets.symmetric(vertical: deviceWidth* .035,horizontal: deviceWidth* .05),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.yellow
                             ),
                             child: Text('Decline',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                           ),
                            Container(padding: EdgeInsets.symmetric(vertical: deviceWidth* .035,horizontal: deviceWidth* .05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue
                              ),
                              child: Text('Accept',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              InkWell(onTap: (){
                goToOrderDetails(context);
              },
                child: Container(margin: EdgeInsets.only(bottom: deviceWidth*.025),
                  padding: EdgeInsets.all(deviceWidth* .05),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(radius: 25,backgroundColor: Colors.blue,child: Icon(Icons.person_outline,size: 30,),),
                            SizedBox(width: deviceWidth* .025,),
                            Expanded(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Refinance of Marin Lawrence',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),overflow: TextOverflow.ellipsis,),
                                  SizedBox(height: deviceWidth* .025,),
                                  Text('A short description of order with some short text.',style: TextStyle(color: Colors.grey),overflow: TextOverflow.visible,)
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth* .05,),
                            Text('\$125',style:
                            TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical:deviceWidth* .025),
                        width: deviceWidth,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38)
                        ),
                      ),
                      SizedBox(height: deviceWidth* .025,),
                      Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(padding: EdgeInsets.symmetric(vertical: deviceWidth* .035,horizontal: deviceWidth* .05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow
                              ),
                              child: Text('Decline',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            ),
                            Container(padding: EdgeInsets.symmetric(vertical: deviceWidth* .035,horizontal: deviceWidth* .05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue
                              ),
                              child: Text('Accept',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(onTap: (){
                goToOrderDetails(context);
              },
                child: Container(margin: EdgeInsets.only(bottom: deviceWidth*.025),
                  padding: EdgeInsets.all(deviceWidth* .05),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(radius: 25,backgroundColor: Colors.blue,child: Icon(Icons.person_outline,size: 30,),),
                            SizedBox(width: deviceWidth* .025,),
                            Expanded(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Refinance of Marin Lawrence',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),overflow: TextOverflow.ellipsis,),
                                  SizedBox(height: deviceWidth* .025,),
                                  Text('A short description of order with some short text.',style: TextStyle(color: Colors.grey),overflow: TextOverflow.visible,)
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth* .05,),
                            Text('\$125',style:
                            TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(vertical:deviceWidth* .025),
                        width: deviceWidth,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38)
                        ),
                      ),
                      SizedBox(height: deviceWidth* .025,),
                      Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(padding: EdgeInsets.symmetric(vertical: deviceWidth* .035,horizontal: deviceWidth* .05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow
                              ),
                              child: Text('Decline',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            ),
                            Container(padding: EdgeInsets.symmetric(vertical: deviceWidth* .035,horizontal: deviceWidth* .05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue
                              ),
                              child: Text('Accept',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  ),
),


    );
  }
}
