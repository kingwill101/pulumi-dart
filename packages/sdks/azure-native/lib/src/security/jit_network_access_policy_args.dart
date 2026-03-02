// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_policy_virtual_machine.dart';
import 'jit_network_access_request.dart';

/// {@template pulumi_security_jit_network_access_policy_args_doc}
/// The set of arguments for JitNetworkAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_security_jit_network_access_policy_args_doc}
class JitNetworkAccessPolicyArgs {
  /// The location where ASC stores the data of the subscription. can be retrieved from Get locations
  final pulumi.Input<String> ascLocation;
  /// Name of a Just-in-Time access configuration policy.
  final pulumi.Input<String>? jitNetworkAccessPolicyName;
  /// Kind of the resource
  final pulumi.Input<String>? kind;
  final pulumi.Input<List<JitNetworkAccessRequest>>? requests;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Configurations for Microsoft.Compute/virtualMachines resource type.
  final pulumi.Input<List<JitNetworkAccessPolicyVirtualMachine>> virtualMachines;

  /// Creates a new [JitNetworkAccessPolicyArgs].
  /// [ascLocation] The location where ASC stores the data of the subscription. can be retrieved from Get locations
  /// [jitNetworkAccessPolicyName] Name of a Just-in-Time access configuration policy.
  /// [kind] Kind of the resource
  /// [requests] Optional.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [virtualMachines] Configurations for Microsoft.Compute/virtualMachines resource type.
  JitNetworkAccessPolicyArgs({
    required this.ascLocation,
    this.jitNetworkAccessPolicyName,
    this.kind,
    this.requests,
    required this.resourceGroupName,
    required this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascLocation': ascLocation,
      'jitNetworkAccessPolicyName': ?jitNetworkAccessPolicyName,
      'kind': ?kind,
      'requests': ?pulumi.Input.mapOptionalInputValue<List<JitNetworkAccessRequest>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<JitNetworkAccessRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'virtualMachines': pulumi.Input.mapInputValue<List<JitNetworkAccessPolicyVirtualMachine>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<JitNetworkAccessPolicyVirtualMachine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JitNetworkAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessPolicyArgs(
      ascLocation: (map['ascLocation'] as String).input(),
      jitNetworkAccessPolicyName: map['jitNetworkAccessPolicyName'] == null ? null : (map['jitNetworkAccessPolicyName']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      requests: map['requests'] == null ? null : (pulumi.Input.decodeList<JitNetworkAccessRequest>(map['requests']!, (value) => JitNetworkAccessRequest.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualMachines: (pulumi.Input.decodeList<JitNetworkAccessPolicyVirtualMachine>(map['virtualMachines'], (value) => JitNetworkAccessPolicyVirtualMachine.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

