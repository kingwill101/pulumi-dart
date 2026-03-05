// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceLocalityLbPolicyCustomPolicy {
  /// An optional, arbitrary JSON object with configuration data, understood
  /// by a locally installed custom policy implementation.
  final pulumi.Input<String> data;
  /// The name of the Backend Service.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// Creates a new [GetBackendServiceLocalityLbPolicyCustomPolicy].
  /// [data] An optional, arbitrary JSON object with configuration data, understood
  /// [name] The name of the Backend Service.
  GetBackendServiceLocalityLbPolicyCustomPolicy({
    required this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'name': name,
    };
  }

  factory GetBackendServiceLocalityLbPolicyCustomPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceLocalityLbPolicyCustomPolicy(
      data: pulumi.Input.fromValue(map['data'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

