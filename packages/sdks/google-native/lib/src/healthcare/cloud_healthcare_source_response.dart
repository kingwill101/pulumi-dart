// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Healthcare API resource.
class CloudHealthcareSourceResponse {
  /// Full path of a Cloud Healthcare API resource.
  final pulumi.Input<String> name;

  /// Creates a new [CloudHealthcareSourceResponse].
  /// [name] Full path of a Cloud Healthcare API resource.
  CloudHealthcareSourceResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory CloudHealthcareSourceResponse.fromMap(Map<String, dynamic> map) {
    return CloudHealthcareSourceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
