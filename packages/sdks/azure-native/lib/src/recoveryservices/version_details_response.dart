// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Version related details.
class VersionDetailsResponse {
  /// Version expiry date.
  final pulumi.Input<String>? expiryDate;

  /// A value indicating whether security update required.
  final pulumi.Input<String>? status;

  /// The agent version.
  final pulumi.Input<String>? version;

  /// Creates a new [VersionDetailsResponse].
  /// [expiryDate] Version expiry date.
  /// [status] A value indicating whether security update required.
  /// [version] The agent version.
  VersionDetailsResponse({this.expiryDate, this.status, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDate': ?expiryDate,
      'status': ?status,
      'version': ?version,
    };
  }

  factory VersionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VersionDetailsResponse(
      expiryDate: (() {
        final guardedValue = map['expiryDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
