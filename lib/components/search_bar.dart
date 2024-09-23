import 'package:book_court_app/const.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;

  const SearchBar({
    super.key,
    required this.text,
    required this.onChanged,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: TextField(
        onChanged: widget.onChanged,
        controller: textController,
        cursorColor: lightBlue,
        style: TextStyle(
          color: lightBlue,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: lightBlue,
          ),
          hintText: 'Search..',
          hintStyle: TextStyle(color: lightBlue),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: darkBlue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: darkBlue),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}
