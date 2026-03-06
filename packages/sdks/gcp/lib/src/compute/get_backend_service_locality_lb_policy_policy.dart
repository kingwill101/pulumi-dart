// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceLocalityLbPolicyPolicy {
  /// The name of the Backend Service.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// Creates a new [GetBackendServiceLocalityLbPolicyPolicy].
  /// [name] The name of the Backend Service.
  const GetBackendServiceLocalityLbPolicyPolicy({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetBackendServiceLocalityLbPolicyPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceLocalityLbPolicyPolicy(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

