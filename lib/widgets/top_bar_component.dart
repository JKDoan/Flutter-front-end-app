import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "../themes.dart";
import "../widget_tutorial/tutorial.dart";

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> tabs;
  final bool showTitle;
  final List<Widget>? secondaryTabContents;

  const TopBar(this.tabs,
      {super.key, this.showTitle = true, this.secondaryTabContents});

  @override
  Widget build(BuildContext context) {
    if (showTitle) {
      // If showTitle is true, return the AppBar with the title "Olaf"
      return AppBar(
        title: Row(
          children: [
            Text(
              "<",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(width: 16),
            Text(
              "Olaf",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Spacer(),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) {
                  //replace this with horse tracker screen
                  return WidgetTutorial();
                }));
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFF001B30), width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Place widget',
                style: TextStyle(color: Color(0xFF001B30), fontSize: 12),
              ),
            ),
          ],
        ),
        backgroundColor: gray,
        elevation: 0,
        bottom: TabBar(
          labelColor: black,
          indicatorColor: brightBlue,
          labelStyle: Theme.of(context).textTheme.titleLarge,
          tabs: tabs.map((tab) => Tab(text: tab)).toList(),
        ),
      );
    } else {
      // If showTitle is false, return the DefaultTabController with the secondaryTabContents
      return DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, 0.0),
              child: TabBar(
                isScrollable: true,
                labelColor: black,
                indicatorColor: brightBlue,
                labelStyle: Theme.of(context).textTheme.titleLarge,
                labelPadding: EdgeInsets.symmetric(horizontal: 18.0),
                tabs: tabs.map((tab) => Tab(text: tab)).toList(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: TabBarView(
                children: secondaryTabContents!.map((content) {
                  return SingleChildScrollView(
                    child: content,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(100);
  }
}
