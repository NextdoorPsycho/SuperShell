import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum SSText { h1, h2, h3, h4, lead, small, muted, p, blockquote, table }

class UMT {
  static Text h0(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.h1Large,
    );
  }

  static Text h1(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.h1,
    );
  }

  static Text h2(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.h2,
    );
  }

  static Text h3(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.h3,
    );
  }

  static Text h4(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.h4,
    );
  }

  static Text txt(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.p,
    );
  }

  static Text bloq(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.blockquote,
    );
  }

  static Text bold(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.table,
    );
  }

  static Text lead(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.lead,
    );
  }

  static Text small(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.small,
    );
  }

  static Text muted(BuildContext context, String text) {
    return Text(
      text,
      style: ShadTheme.of(context).textTheme.muted,
    );
  }

  static Widget animated(
      BuildContext context, SSText style, Duration speed, String text) {
    TextStyle textStyle;
    switch (style) {
      case SSText.h1:
        textStyle = ShadTheme.of(context).textTheme.h1;
        break;
      case SSText.h2:
        textStyle = ShadTheme.of(context).textTheme.h2;
        break;
      case SSText.h3:
        textStyle = ShadTheme.of(context).textTheme.h3;
        break;
      case SSText.h4:
        textStyle = ShadTheme.of(context).textTheme.h4;
        break;
      case SSText.lead:
        textStyle = ShadTheme.of(context).textTheme.lead;
        break;
      case SSText.small:
        textStyle = ShadTheme.of(context).textTheme.small;
        break;
      case SSText.muted:
        textStyle = ShadTheme.of(context).textTheme.muted;
        break;
      case SSText.p:
        textStyle = ShadTheme.of(context).textTheme.p;
        break;
      case SSText.blockquote:
        textStyle = ShadTheme.of(context).textTheme.blockquote;
        break;
      case SSText.table:
        textStyle = ShadTheme.of(context).textTheme.table;
        break;
      default:
        textStyle = ShadTheme.of(context).textTheme.p;
        break;
    }

    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          cursor: '|',
          textAlign: TextAlign.center,
          speed: speed,
          textStyle: textStyle,
        ),
      ],
      totalRepeatCount: 1,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: false,
      stopPauseOnTap: false,
    );
  }
}
