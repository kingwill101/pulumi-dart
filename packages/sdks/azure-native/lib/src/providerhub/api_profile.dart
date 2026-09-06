// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProfile {
  /// Api version.
  final pulumi.Input<String?>? apiVersion;
  /// Profile version.
  final pulumi.Input<String?>? profileVersion;

  /// Creates a new [ApiProfile].
  /// [apiVersion] Api version.
  /// [profileVersion] Profile version.
  const ApiProfile({
    this.apiVersion,
    this.profileVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'profileVersion': ?profileVersion,
    };
  }

  factory ApiProfile.fromMap(Map<String, dynamic> map) {
    return ApiProfile(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileVersion: (() { final guardedValue = map['profileVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
