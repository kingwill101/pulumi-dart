// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The StorageQoSPolicyDetails definition.
class StorageQoSPolicyDetails {
  /// The ID of the QoS policy.
  final pulumi.Input<String>? id;
  /// The name of the policy.
  final pulumi.Input<String>? name;

  /// Creates a new [StorageQoSPolicyDetails].
  /// [id] The ID of the QoS policy.
  /// [name] The name of the policy.
  const StorageQoSPolicyDetails({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory StorageQoSPolicyDetails.fromMap(Map<String, dynamic> map) {
    return StorageQoSPolicyDetails(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

