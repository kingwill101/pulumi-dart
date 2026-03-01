// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IngressPolicy resources.
class IngressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? ingressPolicyName;
  /// A GCP resource that is inside of the service perimeter.
  final pulumi.Input<String>? resource;

  /// Creates a new [IngressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [ingressPolicyName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  IngressPolicyState({
    pulumi.Output<String>? accessPolicyId,
    pulumi.Output<String>? ingressPolicyName,
    pulumi.Output<String>? resource,
  }) :
      accessPolicyId = pulumi.Input.asOptionalInput<String>(accessPolicyId),
      ingressPolicyName = pulumi.Input.asOptionalInput<String>(ingressPolicyName),
      resource = pulumi.Input.asOptionalInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'ingressPolicyName': ?ingressPolicyName,
      'resource': ?resource,
    };
  }

  factory IngressPolicyState.fromMap(Map<String, dynamic> map) {
    return IngressPolicyState(
      accessPolicyId: map['accessPolicyId'] == null ? null : pulumi.Output.create<String>(map['accessPolicyId'] as String),
      ingressPolicyName: map['ingressPolicyName'] == null ? null : pulumi.Output.create<String>(map['ingressPolicyName'] as String),
      resource: map['resource'] == null ? null : pulumi.Output.create<String>(map['resource'] as String),
    );
  }
}

