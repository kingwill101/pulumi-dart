// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationAttributeEnvironment {
  /// Environment type. Possible values: ["PRODUCTION", "STAGING", "TEST", "DEVELOPMENT"]
  final pulumi.Input<String> type;

  /// Creates a new [GetApplicationAttributeEnvironment].
  /// [type] Environment type. Possible values: ["PRODUCTION", "STAGING", "TEST", "DEVELOPMENT"]
  GetApplicationAttributeEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetApplicationAttributeEnvironment.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttributeEnvironment(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

