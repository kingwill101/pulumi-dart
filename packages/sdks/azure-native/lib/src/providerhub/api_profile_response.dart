// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProfileResponse {
  /// Api version.
  final pulumi.Input<String>? apiVersion;
  /// Profile version.
  final pulumi.Input<String>? profileVersion;

  /// Creates a new [ApiProfileResponse].
  /// [apiVersion] Api version.
  /// [profileVersion] Profile version.
  ApiProfileResponse({
    this.apiVersion,
    this.profileVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'profileVersion': ?profileVersion,
    };
  }

  factory ApiProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApiProfileResponse(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileVersion: (() { final guardedValue = map['profileVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

