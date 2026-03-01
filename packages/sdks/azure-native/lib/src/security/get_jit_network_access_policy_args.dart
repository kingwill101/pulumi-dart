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
    required pulumi.Output<String> ascLocation,
    required pulumi.Output<String> jitNetworkAccessPolicyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      ascLocation = pulumi.Input.asInput<String>(ascLocation),
      jitNetworkAccessPolicyName = pulumi.Input.asInput<String>(jitNetworkAccessPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascLocation': ascLocation,
      'jitNetworkAccessPolicyName': jitNetworkAccessPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJitNetworkAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetJitNetworkAccessPolicyArgs(
      ascLocation: pulumi.Output.create<String>(map['ascLocation'] as String),
      jitNetworkAccessPolicyName: pulumi.Output.create<String>(map['jitNetworkAccessPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

