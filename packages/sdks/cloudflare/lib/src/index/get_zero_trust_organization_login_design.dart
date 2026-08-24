// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustOrganizationLoginDesign {
  /// The background color on your login page.
  final pulumi.Input<String> backgroundColor;
  /// The text at the bottom of your login page.
  final pulumi.Input<String> footerText;
  /// The text at the top of your login page.
  final pulumi.Input<String> headerText;
  /// The URL of the logo on your login page.
  final pulumi.Input<String> logoPath;
  /// The text color on your login page.
  final pulumi.Input<String> textColor;

  /// Creates a new [GetZeroTrustOrganizationLoginDesign].
  /// [backgroundColor] The background color on your login page.
  /// [footerText] The text at the bottom of your login page.
  /// [headerText] The text at the top of your login page.
  /// [logoPath] The URL of the logo on your login page.
  /// [textColor] The text color on your login page.
  const GetZeroTrustOrganizationLoginDesign({
    required this.backgroundColor,
    required this.footerText,
    required this.headerText,
    required this.logoPath,
    required this.textColor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': backgroundColor,
      'footerText': footerText,
      'headerText': headerText,
      'logoPath': logoPath,
      'textColor': textColor,
    };
  }

  factory GetZeroTrustOrganizationLoginDesign.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustOrganizationLoginDesign(
      backgroundColor: pulumi.Input.fromValue(map['backgroundColor'] as String),
      footerText: pulumi.Input.fromValue(map['footerText'] as String),
      headerText: pulumi.Input.fromValue(map['headerText'] as String),
      logoPath: pulumi.Input.fromValue(map['logoPath'] as String),
      textColor: pulumi.Input.fromValue(map['textColor'] as String),
    );
  }
}
