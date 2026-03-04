// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk Details.
class OSDetailsResponse {
  /// The OS Major Version.
  final pulumi.Input<String>? oSMajorVersion;

  /// The OS Minor Version.
  final pulumi.Input<String>? oSMinorVersion;

  /// The OS Version.
  final pulumi.Input<String>? oSVersion;

  /// The OSEdition.
  final pulumi.Input<String>? osEdition;

  /// VM Disk details.
  final pulumi.Input<String>? osType;

  /// Product type.
  final pulumi.Input<String>? productType;

  /// The OS name selected by user.
  final pulumi.Input<String>? userSelectedOSName;

  /// Creates a new [OSDetailsResponse].
  /// [oSMajorVersion] The OS Major Version.
  /// [oSMinorVersion] The OS Minor Version.
  /// [oSVersion] The OS Version.
  /// [osEdition] The OSEdition.
  /// [osType] VM Disk details.
  /// [productType] Product type.
  /// [userSelectedOSName] The OS name selected by user.
  OSDetailsResponse({
    this.oSMajorVersion,
    this.oSMinorVersion,
    this.oSVersion,
    this.osEdition,
    this.osType,
    this.productType,
    this.userSelectedOSName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oSMajorVersion': ?oSMajorVersion,
      'oSMinorVersion': ?oSMinorVersion,
      'oSVersion': ?oSVersion,
      'osEdition': ?osEdition,
      'osType': ?osType,
      'productType': ?productType,
      'userSelectedOSName': ?userSelectedOSName,
    };
  }

  factory OSDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OSDetailsResponse(
      oSMajorVersion: (() {
        final guardedValue = map['oSMajorVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oSMinorVersion: (() {
        final guardedValue = map['oSMinorVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oSVersion: (() {
        final guardedValue = map['oSVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osEdition: (() {
        final guardedValue = map['osEdition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userSelectedOSName: (() {
        final guardedValue = map['userSelectedOSName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
