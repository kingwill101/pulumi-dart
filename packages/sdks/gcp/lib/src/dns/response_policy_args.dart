// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gke_cluster.dart';
import 'response_policy_network.dart';

/// {@template pulumi_dns_response_policy_response_policy_args_doc}
/// The set of arguments for ResponsePolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_response_policy_response_policy_args_doc}
class ResponsePolicyArgs {
  /// The description of the response policy, such as `My new response policy`.
  final pulumi.Input<String>? description;
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  final pulumi.Input<List<ResponsePolicyGkeCluster>>? gkeClusters;
  /// The list of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  final pulumi.Input<List<ResponsePolicyNetwork>>? networks;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The user assigned name for this Response Policy, such as `myresponsepolicy`.
  final pulumi.Input<String> responsePolicyName;

  /// Creates a new [ResponsePolicyArgs].
  /// [description] The description of the response policy, such as `My new response policy`.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [networks] The list of network names specifying networks to which this policy is applied.
  /// [project] The ID of the project in which the resource belongs.
  /// [responsePolicyName] The user assigned name for this Response Policy, such as `myresponsepolicy`.
  ResponsePolicyArgs({
    this.description,
    this.gkeClusters,
    this.networks,
    this.project,
    required this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gkeClusters': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyGkeCluster>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<ResponsePolicyGkeCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ResponsePolicyNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'responsePolicyName': responsePolicyName,
    };
  }

  factory ResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      gkeClusters: map['gkeClusters'] == null ? null : (pulumi.Input.decodeList<ResponsePolicyGkeCluster>(map['gkeClusters'], (value) => ResponsePolicyGkeCluster.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networks: map['networks'] == null ? null : (pulumi.Input.decodeList<ResponsePolicyNetwork>(map['networks'], (value) => ResponsePolicyNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      responsePolicyName: (map['responsePolicyName'] as String).input(),
    );
  }
}

