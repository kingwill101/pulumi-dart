// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The StorageQoSPolicy definition.
class StorageQoSPolicyResponse {
  /// The Bandwidth Limit for internet traffic.
  final pulumi.Input<double>? bandwidthLimit;
  /// The ID of the QoS policy.
  final pulumi.Input<String>? id;
  /// The maximum IO operations per second.
  final pulumi.Input<double>? iopsMaximum;
  /// The minimum IO operations per second.
  final pulumi.Input<double>? iopsMinimum;
  /// The name of the policy.
  final pulumi.Input<String>? name;
  /// The underlying policy.
  final pulumi.Input<String>? policyId;

  /// Creates a new [StorageQoSPolicyResponse].
  /// [bandwidthLimit] The Bandwidth Limit for internet traffic.
  /// [id] The ID of the QoS policy.
  /// [iopsMaximum] The maximum IO operations per second.
  /// [iopsMinimum] The minimum IO operations per second.
  /// [name] The name of the policy.
  /// [policyId] The underlying policy.
  StorageQoSPolicyResponse({
    this.bandwidthLimit,
    this.id,
    this.iopsMaximum,
    this.iopsMinimum,
    this.name,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': ?bandwidthLimit,
      'id': ?id,
      'iopsMaximum': ?iopsMaximum,
      'iopsMinimum': ?iopsMinimum,
      'name': ?name,
      'policyId': ?policyId,
    };
  }

  factory StorageQoSPolicyResponse.fromMap(Map<String, dynamic> map) {
    return StorageQoSPolicyResponse(
      bandwidthLimit: map['bandwidthLimit'] == null ? null : (map['bandwidthLimit']! as double).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      iopsMaximum: map['iopsMaximum'] == null ? null : (map['iopsMaximum']! as double).input(),
      iopsMinimum: map['iopsMinimum'] == null ? null : (map['iopsMinimum']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
    );
  }
}

