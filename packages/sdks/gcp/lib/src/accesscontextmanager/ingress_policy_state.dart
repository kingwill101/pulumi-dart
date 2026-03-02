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
    this.accessPolicyId,
    this.ingressPolicyName,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'ingressPolicyName': ?ingressPolicyName,
      'resource': ?resource,
    };
  }

  factory IngressPolicyState.fromMap(Map<String, dynamic> map) {
    return IngressPolicyState(
      accessPolicyId: map['accessPolicyId'] == null ? null : (map['accessPolicyId'] as String).input(),
      ingressPolicyName: map['ingressPolicyName'] == null ? null : (map['ingressPolicyName'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
    );
  }
}

