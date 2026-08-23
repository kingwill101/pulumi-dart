// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_egress_policy_egress_policy_args_doc}
/// The set of arguments for EgressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_egress_policy_egress_policy_args_doc}
class EgressPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> egressPolicyName;
  /// A GCP resource that is inside of the service perimeter.
  final pulumi.Input<String> resource;

  /// Creates a new [EgressPolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [egressPolicyName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  const EgressPolicyArgs({
    this.deletionPolicy,
    required this.egressPolicyName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'egressPolicyName': egressPolicyName,
      'resource': resource,
    };
  }

  factory EgressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EgressPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressPolicyName: pulumi.Input.fromValue(map['egressPolicyName'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
