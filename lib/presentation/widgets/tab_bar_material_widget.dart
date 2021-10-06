import 'package:flutter/material.dart';

class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  TabBarMaterialWidget({@required this.index, @required this.onChangedTab});

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeHolder = Opacity(
      opacity: 0,
      child: Icon(
        Icons.no_cell,
      ),
    );
    return Container(
      height: 70,
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildTabItem(index: 0, icon: Icon(Icons.menu), label: 'menu'),
            _buildTabItem(
              index: 1,
              icon: Icon(Icons.shopping_bag),
              label: 'Offers',
            ),
            placeHolder,
            _buildTabItem(index: 2, icon: Icon(Icons.person), label: 'Profile'),
            _buildTabItem(index: 3, icon: Icon(Icons.read_more), label: 'More'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(
      {@required int index, @required Icon icon, @required String label}) {
    final isSelected = index == widget.index;
    return IconTheme(
        data: IconThemeData(
            color: isSelected ? Color.fromRGBO(252, 96, 17, 1) : Colors.grey),
        child: Column(
          children: [
            IconButton(onPressed: () => widget.onChangedTab(index), icon: icon),
            Text(
              label,
              style: TextStyle(
                  fontSize: 12,
                  color: isSelected
                      ? Color.fromRGBO(252, 96, 17, 1)
                      : Colors.grey),
            ),
          ],
        ));
  }
}
