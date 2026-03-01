// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gke_cluster.dart';
import 'response_policy_network.dart';

/// Input properties used for looking up and filtering ResponsePolicy resources.
class ResponsePolicyState {
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
  final pulumi.Input<String>? responsePolicyName;

  /// Creates a new [ResponsePolicyState].
  /// [description] The description of the response policy, such as `My new response policy`.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [networks] The list of network names specifying networks to which this policy is applied.
  /// [project] The ID of the project in which the resource belongs.
  /// [responsePolicyName] The user assigned name for this Response Policy, such as `myresponsepolicy`.
  ResponsePolicyState({
    pulumi.Output<String>? description,
    pulumi.Output<List<ResponsePolicyGkeCluster>>? gkeClusters,
    pulumi.Output<List<ResponsePolicyNetwork>>? networks,
    pulumi.Output<String>? project,
    pulumi.Output<String>? responsePolicyName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gkeClusters = pulumi.Input.asOptionalInput<List<ResponsePolicyGkeCluster>>(gkeClusters),
      networks = pulumi.Input.asOptionalInput<List<ResponsePolicyNetwork>>(networks),
      project = pulumi.Input.asOptionalInput<String>(project),
      responsePolicyName = pulumi.Input.asOptionalInput<String>(responsePolicyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gkeClusters': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyGkeCluster>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<ResponsePolicyGkeCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ResponsePolicyNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'responsePolicyName': ?responsePolicyName,
    };
  }

  factory ResponsePolicyState.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gkeClusters: map['gkeClusters'] == null ? null : pulumi.Output.create<List<ResponsePolicyGkeCluster>>(pulumi.Input.decodeList<ResponsePolicyGkeCluster>(map['gkeClusters'], (value) => ResponsePolicyGkeCluster.fromMap((value as Map).cast<String, dynamic>()))),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<ResponsePolicyNetwork>>(pulumi.Input.decodeList<ResponsePolicyNetwork>(map['networks'], (value) => ResponsePolicyNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      responsePolicyName: map['responsePolicyName'] == null ? null : pulumi.Output.create<String>(map['responsePolicyName'] as String),
    );
  }
}

