// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_egress_policy_egress_policy_args_doc}
/// The set of arguments for EgressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_egress_policy_egress_policy_args_doc}
class EgressPolicyArgs {
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> egressPolicyName;
  /// A GCP resource that is inside of the service perimeter.
  final pulumi.Input<String> resource;

  /// Creates a new [EgressPolicyArgs].
  /// [egressPolicyName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  EgressPolicyArgs({
    required this.egressPolicyName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressPolicyName': egressPolicyName,
      'resource': resource,
    };
  }

  factory EgressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EgressPolicyArgs(
      egressPolicyName: (map['egressPolicyName'] as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

