part of dashboard;

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 25,
            color: Theme.of(context).primaryColor,
          ),
          hintText: "Search game",
        ),
      ),
    );
  }
}
