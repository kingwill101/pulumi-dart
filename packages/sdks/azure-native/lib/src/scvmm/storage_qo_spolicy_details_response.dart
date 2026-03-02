// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The StorageQoSPolicyDetails definition.
class StorageQoSPolicyDetailsResponse {
  /// The ID of the QoS policy.
  final pulumi.Input<String>? id;
  /// The name of the policy.
  final pulumi.Input<String>? name;

  /// Creates a new [StorageQoSPolicyDetailsResponse].
  /// [id] The ID of the QoS policy.
  /// [name] The name of the policy.
  StorageQoSPolicyDetailsResponse({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory StorageQoSPolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return StorageQoSPolicyDetailsResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

