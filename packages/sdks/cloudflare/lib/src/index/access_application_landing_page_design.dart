// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationLandingPageDesign {
  /// The background color of the log in button on the landing page.
  final pulumi.Input<String?>? buttonColor;
  /// The color of the text in the log in button on the landing page.
  final pulumi.Input<String?>? buttonTextColor;
  /// The URL of the image shown on the landing page.
  final pulumi.Input<String?>? imageUrl;
  /// The message shown on the landing page.
  final pulumi.Input<String?>? message;
  /// The title shown on the landing page.
  final pulumi.Input<String?>? title;

  /// Creates a new [AccessApplicationLandingPageDesign].
  /// [buttonColor] The background color of the log in button on the landing page.
  /// [buttonTextColor] The color of the text in the log in button on the landing page.
  /// [imageUrl] The URL of the image shown on the landing page.
  /// [message] The message shown on the landing page.
  /// [title] The title shown on the landing page.
  const AccessApplicationLandingPageDesign({
    this.buttonColor,
    this.buttonTextColor,
    this.imageUrl,
    this.message,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttonColor': ?buttonColor,
      'buttonTextColor': ?buttonTextColor,
      'imageUrl': ?imageUrl,
      'message': ?message,
      'title': ?title,
    };
  }

  factory AccessApplicationLandingPageDesign.fromMap(Map<String, dynamic> map) {
    return AccessApplicationLandingPageDesign(
      buttonColor: (() { final guardedValue = map['buttonColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buttonTextColor: (() { final guardedValue = map['buttonTextColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageUrl: (() { final guardedValue = map['imageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
