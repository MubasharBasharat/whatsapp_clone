import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.8),
              tabs: [
                Tab(child: Icon(Icons.groups)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),
              ],
            ),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 15),
              Icon(Icons.search),
              SizedBox(width: 15),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          value: '2',
                          child: Text('New broadcast'),
                        ),
                        PopupMenuItem(
                          value: '3',
                          child: Text('Linked devices'),
                        ),
                        PopupMenuItem(
                            value: '4', child: Text('Starred messages')),
                        PopupMenuItem(
                          value: '5',
                          child: Text('Settings'),
                        )
                      ])
            ],
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 4,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 2)),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(index > 1
                              ? 'https://images.pexels.com/photos/15355238/pexels-photo-15355238.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
                              : 'https://i.guim.co.uk/img/media/5000f4c33ca07594f225c7301a7e40eb8c29b1cb/1643_4674_4460_2676/master/4460.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9ab62d1eb5079254fc9a79114babbaef')),
                    ),
                    // title: Text(index > 1 ? 'Grace' : 'Shelby'),
                    // subtitle: Text(index > 1 ? 'Typing' : 'How are you Grace?'),
                  );
                })),
            //chats
            Scaffold(
              body: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(index > 1
                              ? 'https://images.pexels.com/photos/15355238/pexels-photo-15355238.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
                              : 'https://i.guim.co.uk/img/media/5000f4c33ca07594f225c7301a7e40eb8c29b1cb/1643_4674_4460_2676/master/4460.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9ab62d1eb5079254fc9a79114babbaef')),
                      title: Text(index > 1 ? 'Grace' : 'Shelby'),
                      subtitle:
                          Text(index > 1 ? 'Typing' : 'How are you Grace?'),
                      trailing: Text(index > 1 ? '4:51 pm' : '12:00 pm'),
                    );
                  })),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.chat,
                ),
                onPressed: () {},
              ),
            ),
            // status
            Scaffold(
              body: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    if (index < 1) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Recent Updates'),
                              ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green, width: 2)),
                                  child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/15355238/pexels-photo-15355238.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load')),
                                ),
                                title: Text('Grace'),
                                subtitle: Text('30 min ago'),
                              )
                            ]),
                      );
                    } else
                      return Column(
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 2)),
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://i.guim.co.uk/img/media/5000f4c33ca07594f225c7301a7e40eb8c29b1cb/1643_4674_4460_2676/master/4460.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9ab62d1eb5079254fc9a79114babbaef')),
                            ),
                            title: Text('Shelby'),
                            subtitle: Text('10 min ago'),
                          ),
                        ],
                      );
                  })),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.mode_edit,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  //button 2
                  FloatingActionButton(
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.camera_alt,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            //calls

            Scaffold(
              body: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(index > 1
                              ? 'https://images.pexels.com/photos/15355238/pexels-photo-15355238.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
                              : 'https://i.guim.co.uk/img/media/5000f4c33ca07594f225c7301a7e40eb8c29b1cb/1643_4674_4460_2676/master/4460.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9ab62d1eb5079254fc9a79114babbaef')),
                      title: Text(index > 1 ? 'Grace' : 'Shelby'),
                      subtitle: Text(
                          index > 1 ? 'Today 5:28 pm' : 'Yesterday 12:00 pm'),
                      trailing: Icon(
                        index > 1 ? (Icons.call) : Icons.videocam,
                        color: Colors.teal,
                      ),
                    );
                  })),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.call,
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ));
  }
}
