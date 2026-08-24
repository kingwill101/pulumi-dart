// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationLandingPageDesign {
  /// The background color of the log in button on the landing page.
  final pulumi.Input<String> buttonColor;
  /// The color of the text in the log in button on the landing page.
  final pulumi.Input<String> buttonTextColor;
  /// The URL of the image shown on the landing page.
  final pulumi.Input<String> imageUrl;
  /// The message shown on the landing page.
  final pulumi.Input<String> message;
  /// The title shown on the landing page.
  final pulumi.Input<String> title;

  /// Creates a new [GetZeroTrustAccessApplicationLandingPageDesign].
  /// [buttonColor] The background color of the log in button on the landing page.
  /// [buttonTextColor] The color of the text in the log in button on the landing page.
  /// [imageUrl] The URL of the image shown on the landing page.
  /// [message] The message shown on the landing page.
  /// [title] The title shown on the landing page.
  const GetZeroTrustAccessApplicationLandingPageDesign({
    required this.buttonColor,
    required this.buttonTextColor,
    required this.imageUrl,
    required this.message,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttonColor': buttonColor,
      'buttonTextColor': buttonTextColor,
      'imageUrl': imageUrl,
      'message': message,
      'title': title,
    };
  }

  factory GetZeroTrustAccessApplicationLandingPageDesign.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationLandingPageDesign(
      buttonColor: pulumi.Input.fromValue(map['buttonColor'] as String),
      buttonTextColor: pulumi.Input.fromValue(map['buttonTextColor'] as String),
      imageUrl: pulumi.Input.fromValue(map['imageUrl'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
