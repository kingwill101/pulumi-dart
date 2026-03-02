// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_jit_network_access_policy_args_doc}
/// Arguments for getJitNetworkAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_security_get_jit_network_access_policy_args_doc}
class GetJitNetworkAccessPolicyArgs {
  /// The location where ASC stores the data of the subscription. can be retrieved from Get locations
  final pulumi.Input<String> ascLocation;
  /// Name of a Just-in-Time access configuration policy.
  final pulumi.Input<String> jitNetworkAccessPolicyName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJitNetworkAccessPolicyArgs].
  /// [ascLocation] The location where ASC stores the data of the subscription. can be retrieved from Get locations
  /// [jitNetworkAccessPolicyName] Name of a Just-in-Time access configuration policy.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetJitNetworkAccessPolicyArgs({
    required this.ascLocation,
    required this.jitNetworkAccessPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascLocation': ascLocation,
      'jitNetworkAccessPolicyName': jitNetworkAccessPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJitNetworkAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetJitNetworkAccessPolicyArgs(
      ascLocation: (map['ascLocation'] as String).input(),
      jitNetworkAccessPolicyName: (map['jitNetworkAccessPolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

