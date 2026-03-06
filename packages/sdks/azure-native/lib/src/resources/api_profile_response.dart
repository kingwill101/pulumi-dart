// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProfileResponse {
  /// The API version.
  final pulumi.Input<String> apiVersion;
  /// The profile version.
  final pulumi.Input<String> profileVersion;

  /// Creates a new [ApiProfileResponse].
  /// [apiVersion] The API version.
  /// [profileVersion] The profile version.
  const ApiProfileResponse({
    required this.apiVersion,
    required this.profileVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'profileVersion': profileVersion,
    };
  }

  factory ApiProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApiProfileResponse(
      apiVersion: pulumi.Input.fromValue(map['apiVersion'] as String),
      profileVersion: pulumi.Input.fromValue(map['profileVersion'] as String),
    );
  }
}

