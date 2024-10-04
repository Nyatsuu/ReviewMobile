import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFF5757), // Mengatur warna latar belakang
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: GoogleFonts.poppins(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        hintStyle: GoogleFonts.poppins(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
