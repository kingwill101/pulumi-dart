// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gke_cluster.dart';
import 'response_policy_network.dart';

/// {@template pulumi_dns_response_policy_response_policy_args_doc}
/// The set of arguments for ResponsePolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_response_policy_response_policy_args_doc}
class ResponsePolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the response policy, such as `My new response policy`.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [networks] The list of network names specifying networks to which this policy is applied.
  /// [project] The ID of the project in which the resource belongs.
  /// [responsePolicyName] The user assigned name for this Response Policy, such as `myresponsepolicy`.
  const ResponsePolicyArgs({
    this.deletionPolicy,
    this.description,
    this.gkeClusters,
    this.networks,
    this.project,
    required this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'gkeClusters': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyGkeCluster>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<ResponsePolicyGkeCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ResponsePolicyNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'responsePolicyName': responsePolicyName,
    };
  }

  factory ResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gkeClusters: (() { final guardedValue = map['gkeClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResponsePolicyGkeCluster>(guardedValue, (value) => ResponsePolicyGkeCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResponsePolicyNetwork>(guardedValue, (value) => ResponsePolicyNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responsePolicyName: pulumi.Input.fromValue(map['responsePolicyName'] as String),
    );
  }
}
