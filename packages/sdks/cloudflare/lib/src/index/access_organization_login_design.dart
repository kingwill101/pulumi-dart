// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessOrganizationLoginDesign {
  /// The background color on your login page.
  final pulumi.Input<String?>? backgroundColor;
  /// The text at the bottom of your login page.
  final pulumi.Input<String?>? footerText;
  /// The text at the top of your login page.
  final pulumi.Input<String?>? headerText;
  /// The URL of the logo on your login page.
  final pulumi.Input<String?>? logoPath;
  /// The text color on your login page.
  final pulumi.Input<String?>? textColor;

  /// Creates a new [AccessOrganizationLoginDesign].
  /// [backgroundColor] The background color on your login page.
  /// [footerText] The text at the bottom of your login page.
  /// [headerText] The text at the top of your login page.
  /// [logoPath] The URL of the logo on your login page.
  /// [textColor] The text color on your login page.
  const AccessOrganizationLoginDesign({
    this.backgroundColor,
    this.footerText,
    this.headerText,
    this.logoPath,
    this.textColor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': ?backgroundColor,
      'footerText': ?footerText,
      'headerText': ?headerText,
      'logoPath': ?logoPath,
      'textColor': ?textColor,
    };
  }

  factory AccessOrganizationLoginDesign.fromMap(Map<String, dynamic> map) {
    return AccessOrganizationLoginDesign(
      backgroundColor: (() { final guardedValue = map['backgroundColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      footerText: (() { final guardedValue = map['footerText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerText: (() { final guardedValue = map['headerText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logoPath: (() { final guardedValue = map['logoPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textColor: (() { final guardedValue = map['textColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
