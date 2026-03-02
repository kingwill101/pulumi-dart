// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_peer_patch.dart';
import 'network_policy_port_patch.dart';

/// DEPRECATED 1.9 - This group version of NetworkPolicyIngressRule is deprecated by networking/v1/NetworkPolicyIngressRule. This NetworkPolicyIngressRule matches traffic if and only if the traffic matches both ports AND from.
class NetworkPolicyIngressRulePatch {
  /// List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  final pulumi.Input<List<NetworkPolicyPeerPatch>>? from;
  /// List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final pulumi.Input<List<NetworkPolicyPortPatch>>? ports;

  /// Creates a new [NetworkPolicyIngressRulePatch].
  /// [from] List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  /// [ports] List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  NetworkPolicyIngressRulePatch({
    this.from,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?pulumi.Input.mapOptionalInputValue<List<NetworkPolicyPeerPatch>, List<Map<String, dynamic>>>(from, (value) => pulumi.Input.encodeList<NetworkPolicyPeerPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ports': ?pulumi.Input.mapOptionalInputValue<List<NetworkPolicyPortPatch>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<NetworkPolicyPortPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkPolicyIngressRulePatch.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyIngressRulePatch(
      from: map['from'] == null ? null : (pulumi.Input.decodeList<NetworkPolicyPeerPatch>(map['from']!, (value) => NetworkPolicyPeerPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<NetworkPolicyPortPatch>(map['ports']!, (value) => NetworkPolicyPortPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

