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
    pulumi.Output<String>? accessPolicyId,
    pulumi.Output<String>? egressPolicyName,
    pulumi.Output<String>? resource,
  }) :
      accessPolicyId = pulumi.Input.asOptionalInput<String>(accessPolicyId),
      egressPolicyName = pulumi.Input.asOptionalInput<String>(egressPolicyName),
      resource = pulumi.Input.asOptionalInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'egressPolicyName': ?egressPolicyName,
      'resource': ?resource,
    };
  }

  factory EgressPolicyState.fromMap(Map<String, dynamic> map) {
    return EgressPolicyState(
      accessPolicyId: map['accessPolicyId'] == null ? null : pulumi.Output.create<String>(map['accessPolicyId'] as String),
      egressPolicyName: map['egressPolicyName'] == null ? null : pulumi.Output.create<String>(map['egressPolicyName'] as String),
      resource: map['resource'] == null ? null : pulumi.Output.create<String>(map['resource'] as String),
    );
  }
}

