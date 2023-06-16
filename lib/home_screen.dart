import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xff075E54),
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontSize: 22),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Icon(Icons.groups)),
                Tab(
                    child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 18),
                )),
                Tab(child: Text('Status', style: TextStyle(fontSize: 18))),
                Tab(child: Text('Call', style: TextStyle(fontSize: 18))),
              ],
            ),
            actions: [
              const Icon(
                Icons.photo_camera,
                size: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.search,
                size: 25,
              ),

              // Icon(Icons.more_vert,size: 25,),

              // PopupMenuButton(
              //     itemBuilder: (context) =>
              //         const [
              //           PopupMenuItem(
              //             value: '1',
              //             child: Text("New Group"),
              //           ),
              //           PopupMenuItem(
              //             value: '2',
              //             child: Text("Settings"),
              //           ),
              //         ])

              PopupMenuButton(
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: '1', child: Text("New Group")),
                        PopupMenuItem(value: '2', child: Text("New broadcast")),
                        PopupMenuItem(value: '3', child: Text("Linked device")),
                        PopupMenuItem(value: '4', child: Text("Settings")),
                      ])
            ]),
        body: TabBarView(
          children: [
            Column(
            
            
              children: [
                
                const SizedBox(

                  height: 200,
                  width: 300,
                  child:  Image(image: AssetImage('images/img1.jpg'),),
              
                ),
                const Text(
                  'Introducing communities',
                  style: TextStyle(
                      color: Color(0xff10151B),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                 const Padding(
                   padding:  EdgeInsets.only(left:30,right: 30,bottom: 40,top: 20),
                   child: Text('Easily organise your related groups and send announcements.Now your communities,like neighbourhoods or school,can have their own space.',
                    style: TextStyle(color: Color(0xff8D959A),fontSize: 16),),
                 ),

                 Container(
                  height: 50,
                 width: 300,
                 
                 decoration: BoxDecoration(
                  color: const Color(0xff075E54),
                  borderRadius: BorderRadius.circular(40)
                 ),
                 child: const Center(child: Text('Start your community',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)),
                 )
                
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index % 3 == 0
                      ? ListTile(
                          title: const Text(
                            'Aasika',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          subtitle: Text(index % 2 == 0
                              ? "Where do you live?"
                              : "What do you study?"),
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/3342003/pexels-photo-3342003.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                          trailing: Text(index % 2 == 0 ? '6:45 pm' : '3:30am'),
                        )
                      : ListTile(
                          title: const Text(
                            'Priya',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          subtitle: Text(index % 2 == 0
                              ? "How are you?"
                              : "You look great"),
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/2681751/pexels-photo-2681751.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                          trailing: Text(index % 2 == 0 ? '6:45 pm' : '3:30am'),
                        );
                },
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: const Text(
                    "My status",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: const Text('Tap to add status updare'),
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 0)),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  width: 400,
                  color: const Color(0xffF3F3F4),
                  child: const Center(
                      child: Text(
                    'Recent Updates',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff959595)),
                  )),
                ),
                ListTile(
                  title: const Text(
                    "Priya",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: const Text('5:29 pm'),
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3)),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/2681751/pexels-photo-2681751.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text(
                    'Aasika',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: const Text('3:10 am'),
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3)),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3342003/pexels-photo-3342003.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return index % 3 == 0
                      ? ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/2681751/pexels-photo-2681751.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                          title: const Text('Priya'),
                          subtitle: const Text('Yesterday, 10:33pm'),
                          trailing: Icon(
                            index % 2 == 0 ? Icons.call : Icons.video_call,
                            color: Colors.red,
                          ),
                        )
                      : ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/3342003/pexels-photo-3342003.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                          title: const Text('Aashika'),
                          subtitle: Text(index % 2 == 0
                              ? 'Yesterday, 5:33pm'
                              : 'Yesterday, 8:33pm'),
                          trailing: Icon(
                            index % 2 == 0 ? Icons.call : Icons.video_call,
                            color: Colors.green,
                          ),
                        );
                }),
          ],
        ),
      ),
    );
  }
}
