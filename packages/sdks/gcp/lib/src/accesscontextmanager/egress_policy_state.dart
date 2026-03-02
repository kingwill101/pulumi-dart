// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EgressPolicy resources.
class EgressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? egressPolicyName;
  /// A GCP resource that is inside of the service perimeter.
  final pulumi.Input<String>? resource;

  /// Creates a new [EgressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [egressPolicyName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  EgressPolicyState({
    this.accessPolicyId,
    this.egressPolicyName,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'egressPolicyName': ?egressPolicyName,
      'resource': ?resource,
    };
  }

  factory EgressPolicyState.fromMap(Map<String, dynamic> map) {
    return EgressPolicyState(
      accessPolicyId: map['accessPolicyId'] == null ? null : (map['accessPolicyId'] as String).input(),
      egressPolicyName: map['egressPolicyName'] == null ? null : (map['egressPolicyName'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
    );
  }
}

