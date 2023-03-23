import 'package:flutter/material.dart';
import 'package:toonflix/common/const/colors.dart';

class CostomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obsureText;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;

  const CostomTextFormField(
      {this.hintText,
      this.errorText,
      this.obsureText = false,
      this.autoFocus = false,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    const baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: inputBorderColor,
        width: 1.0,
      ),
    );

    return TextFormField(
      cursorColor: priMaryColor,
      //비밀번호 입력할 때
      obscureText: obsureText,
      autofocus: autoFocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: bodyTextColor,
          fontSize: 14.0,
        ),
        errorText: errorText,
        fillColor: inputBgColor,
        filled: true,
        //모든 input 상태의 기본스타일 세팅
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: priMaryColor,
          ),
        ),
      ),
    );
  }
}
