// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';
import 'network_policy_egress_rule.dart';
import 'network_policy_ingress_rule.dart';

/// NetworkPolicySpec provides the specification of a NetworkPolicy
class NetworkPolicySpec {
  /// egress is a list of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
  final List<NetworkPolicyEgressRule>? egress;
  /// ingress is a list of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
  final List<NetworkPolicyIngressRule>? ingress;
  /// podSelector selects the pods to which this NetworkPolicy object applies. The array of rules is applied to any pods selected by this field. An empty selector matches all pods in the policy's namespace. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is optional. If it is not specified, it defaults to an empty selector.
  final LabelSelector podSelector;
  /// policyTypes is a list of rule types that the NetworkPolicy relates to. Valid options are ["Ingress"], ["Egress"], or ["Ingress", "Egress"]. If this field is not specified, it will default based on the existence of ingress or egress rules; policies that contain an egress section are assumed to affect egress, and all policies (whether or not they contain an ingress section) are assumed to affect ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an egress section and would otherwise default to just [ "Ingress" ]). This field is beta-level in 1.8
  final List<String>? policyTypes;

  /// Creates a new [NetworkPolicySpec].
  /// [egress] egress is a list of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
  /// [ingress] ingress is a list of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
  /// [podSelector] podSelector selects the pods to which this NetworkPolicy object applies. The array of rules is applied to any pods selected by this field. An empty selector matches all pods in the policy's namespace. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is optional. If it is not specified, it defaults to an empty selector.
  /// [policyTypes] policyTypes is a list of rule types that the NetworkPolicy relates to. Valid options are ["Ingress"], ["Egress"], or ["Ingress", "Egress"]. If this field is not specified, it will default based on the existence of ingress or egress rules; policies that contain an egress section are assumed to affect egress, and all policies (whether or not they contain an ingress section) are assumed to affect ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an egress section and would otherwise default to just [ "Ingress" ]). This field is beta-level in 1.8
  NetworkPolicySpec({
    this.egress,
    this.ingress,
    required this.podSelector,
    this.policyTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egress': ?egress == null ? null : pulumi.Input.encodeList<NetworkPolicyEgressRule, Map<String, dynamic>>(egress!, (value) => value.toMap()),
      'ingress': ?ingress == null ? null : pulumi.Input.encodeList<NetworkPolicyIngressRule, Map<String, dynamic>>(ingress!, (value) => value.toMap()),
      'podSelector': podSelector.toMap(),
      'policyTypes': ?policyTypes,
    };
  }

  factory NetworkPolicySpec.fromMap(Map<String, dynamic> map) {
    return NetworkPolicySpec(
      egress: map['egress'] == null ? null : pulumi.Input.decodeList<NetworkPolicyEgressRule>(map['egress'], (value) => NetworkPolicyEgressRule.fromMap((value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : pulumi.Input.decodeList<NetworkPolicyIngressRule>(map['ingress'], (value) => NetworkPolicyIngressRule.fromMap((value as Map).cast<String, dynamic>())),
      podSelector: LabelSelector.fromMap((map['podSelector'] as Map).cast<String, dynamic>()),
      policyTypes: map['policyTypes'] == null ? null : (map['policyTypes'] as List).cast<String>(),
    );
  }
}

