// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IngressPolicy resources.
class IngressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? ingressPolicyName;
  /// A GCP resource that is inside of the service perimeter.
  final pulumi.Input<String>? resource;

  /// Creates a new [IngressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [ingressPolicyName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  const IngressPolicyState({
    this.accessPolicyId,
    this.deletionPolicy,
    this.ingressPolicyName,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'deletionPolicy': ?deletionPolicy,
      'ingressPolicyName': ?ingressPolicyName,
      'resource': ?resource,
    };
  }

  factory IngressPolicyState.fromMap(Map<String, dynamic> map) {
    return IngressPolicyState(
      accessPolicyId: (() { final guardedValue = map['accessPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressPolicyName: (() { final guardedValue = map['ingressPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
