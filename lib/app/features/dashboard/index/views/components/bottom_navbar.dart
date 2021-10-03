part of dashboard;

class _BottomNavbar extends StatelessWidget {
  _BottomNavbar({Key? key}) : super(key: key);

  final _index = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _customBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: BottomNavigationBar(
            onTap: (value) => _index.value = value,
            currentIndex: _index.value,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection), label: "Collection"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_fill), label: "Installed"),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconSize: 30,
            unselectedItemColor: Colors.grey[500],
          ),
        ),
      ),
    );
  }

  Widget _customBackground({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
      ),
      child: child,
    );
  }
}
