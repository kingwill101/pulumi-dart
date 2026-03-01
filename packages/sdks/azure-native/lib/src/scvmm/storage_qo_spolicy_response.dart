// ignore_for_file: unused_element, unnecessary_cast


/// The StorageQoSPolicy definition.
class StorageQoSPolicyResponse {
  /// The Bandwidth Limit for internet traffic.
  final double? bandwidthLimit;
  /// The ID of the QoS policy.
  final String? id;
  /// The maximum IO operations per second.
  final double? iopsMaximum;
  /// The minimum IO operations per second.
  final double? iopsMinimum;
  /// The name of the policy.
  final String? name;
  /// The underlying policy.
  final String? policyId;

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
      bandwidthLimit: map['bandwidthLimit'] == null ? null : map['bandwidthLimit'] as double,
      id: map['id'] == null ? null : map['id'] as String,
      iopsMaximum: map['iopsMaximum'] == null ? null : map['iopsMaximum'] as double,
      iopsMinimum: map['iopsMinimum'] == null ? null : map['iopsMinimum'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
    );
  }
}

