
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/screens/whatsapp_chats_screen.dart';

import '../styles/colors.dart';
import '../widgets/default_text.dart';

class WhatsAppHomeScreen extends StatefulWidget {
  const WhatsAppHomeScreen({Key? key}) : super(key: key);

  @override
  State<WhatsAppHomeScreen> createState() => _WhatsAppHomeScreenState();
}

class _WhatsAppHomeScreenState extends State<WhatsAppHomeScreen> with TickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 1,
        length: 4,
      vsync: this,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
            headerSliverBuilder: (context, value){
              return [
                SliverAppBar(
                  backgroundColor: barsColor,
                  title: const DefaultText(
                      text: 'WhatsApp',
                      color: textsColor,
                  ),
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    isScrollable: true,
                      indicatorColor: floatingActionButtonColor,
                      labelColor: floatingActionButtonColor,
                      controller: tabController,
                      unselectedLabelColor: textsColor,
                      tabs: [
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: const Tab(
                            child: Icon(Icons.groups),
                          ),
                        ),
                        Container(
                          width: 19.w,
                          alignment: AlignmentDirectional.center,
                          child: const Tab(
                            text: 'CHATS',
                          ),
                        ),
                        Container(
                          width: 19.w,
                          alignment: AlignmentDirectional.center,
                          child: const Tab(
                            text: 'STATUS',
                          ),
                        ),
                        Container(
                          width: 19.w,
                          alignment: AlignmentDirectional.center,
                          child: const Tab(
                            text: 'CALLS',
                          ),
                        ),
                      ],
                  ),
                  actions: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: textsColor,
                      ),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(
                            Icons.search,
                          color: textsColor,
                        ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.more_vert,
                        color: textsColor,
                      ),
                    ),
                  ],
                ),
              ];
            },
            body: TabBarView(
              controller: tabController,
              children: const [
                FlutterLogo(),
                WhatsAppChatsScreen(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: floatingActionButtonColor,
        child: const RotatedBox(
          quarterTurns: 2,
          child: Icon(
              Icons.chat,
          ),
        ),
      ),
    );
  }
}
