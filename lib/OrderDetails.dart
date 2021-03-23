import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  static const routeName = 'OrderDetails';

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),onPressed: (){
              Navigator.pop(context);
          },
          ),
        ),
        body: Container(
          width: deviceWidth,
          height: deviceHeight,
          padding: EdgeInsets.all(deviceWidth* .05),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              SizedBox(height: deviceWidth* .025,),
              TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  indicatorColor: Colors.blue,
                  indicatorWeight: 4,

                  tabs: [
                Tab(child: Text('Details',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),),
                Tab(child: Text('Chat',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),),
                Tab(child: Text('Documents',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),),
                    Tab(child: Text('Signing Location',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),),
              ]),

              SizedBox(
                height: deviceHeight* .7,
                child: TabBarView(children: [
                  Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: deviceWidth* .025),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Status',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                          Container(padding: EdgeInsets.symmetric(vertical: deviceWidth* .035,horizontal: deviceWidth* .05),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue
                            ),
                            child: Text('Change Details',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],),
                    ),
                     Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            divisions: 5,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Id :\n#79798234',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text('Amount\n\$150',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

                      ],)

                  ],

                  ),

                  Column(
                    children: [
                      Container(margin: EdgeInsets.only(top: deviceWidth* .05),
                        padding: EdgeInsets.all(deviceWidth* .025),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black38)
                        ),
                        child: Column(
                          children: [
                            Row(children: [
                              Icon(Icons.person),
                              SizedBox(width: deviceWidth* .025,),
                              Text('Signer Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                            ],),
                            Container(padding: EdgeInsets.only(left: deviceWidth* .05,top: deviceWidth* .05),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text('Signer Name :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('Martin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Row(children: [
                                    Text('Phone Number :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('+702.530.2495',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Row(children: [
                                    Text('Signer Last Name :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('Lawrence',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Text('Address :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                  SizedBox(height: deviceWidth* .025,),
                                  Text('1101, Long Road Avenue,\nBoulveyard Street, Las Vegas,\nNevada',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.only(top: deviceWidth* .05),
                        padding: EdgeInsets.all(deviceWidth* .025),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black38)
                        ),
                        child: Column(
                          children: [
                            Row(children: [
                              Icon(Icons.view_list_outlined,size: 30,),
                              SizedBox(width: deviceWidth* .025,),
                              Text('Closing Agent Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                            ],),
                            Container(padding: EdgeInsets.only(left: deviceWidth* .05,top: deviceWidth* .05),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text('Closing Agent :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('Wells Fargo Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Row(children: [
                                    Text('CA First Name :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('Martin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Row(children: [
                                    Text('Phone Number :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('+702.530.2495',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),

                                  SizedBox(height: deviceWidth* .025,),
                                  Row(
                                    children: [
                                      Text('CA Email:',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                      SizedBox(width: deviceWidth* .025,),
                                      Text('ashley@chase.com',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                    ],
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(margin: EdgeInsets.only(top: deviceWidth* .05),
                        padding: EdgeInsets.all(deviceWidth* .025),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black38)
                        ),
                        child: Column(
                          children: [
                            Row(children: [
                              Icon(Icons.list_alt_outlined),
                              SizedBox(width: deviceWidth* .025,),
                              Text('Order Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                            ],),
                            Container(padding: EdgeInsets.only(left: deviceWidth* .05,top: deviceWidth* .05),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text('Closing Type :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('Refinance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Row(children: [
                                    Text('Escrow for this file :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('lorem ipsum dolor',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Row(children: [
                                    Text('Order Type :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                    SizedBox(width: deviceWidth* .025,),
                                    Text('Mobile (\$150)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ],),
                                  SizedBox(height: deviceWidth* .025,),
                                  Text('Property Address :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                  SizedBox(height: deviceWidth* .025,),
                                  Text('1101, Long Road Avenue,\nBoulveyard Street, Las Vegas,\nNevada',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                      margin: EdgeInsets.only(top: deviceWidth* .05),
                        padding: EdgeInsets.all(deviceWidth* .025),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black38)
                        ),
                        child: Row(
                        children: [
                          Icon(Icons.location_on,size: 30,color: Colors.red,),
                          SizedBox(width: deviceWidth* .025,),
                          Text('Signing\nLocation',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),),
                          SizedBox(width: deviceWidth* .1,),
                          Expanded(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Address',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 16),),
                                SizedBox(height: deviceWidth* .025,),
                                Text('1101, Long Road Avenue,Boulveyard Street, Las Vegas,Nevada',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),overflow: TextOverflow.visible,),
                                SizedBox(height: deviceWidth* .05,),
                                Text('Time: Jan 12, 4.45 PM',style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          )
                        ],
                      ),

                      ),
                    ],
                  ),
                ]),
              ),


            ],
          ),
        ),

      ),
    );
  }
}
