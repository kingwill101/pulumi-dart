// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_peer_patch.dart';
import 'network_policy_port_patch.dart';

/// NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8
class NetworkPolicyEgressRulePatch {
  /// ports is a list of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final pulumi.Input<List<NetworkPolicyPortPatch>>? ports;
  /// to is a list of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
  final pulumi.Input<List<NetworkPolicyPeerPatch>>? to;

  /// Creates a new [NetworkPolicyEgressRulePatch].
  /// [ports] ports is a list of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  /// [to] to is a list of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
  NetworkPolicyEgressRulePatch({
    this.ports,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ?pulumi.Input.mapOptionalInputValue<List<NetworkPolicyPortPatch>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<NetworkPolicyPortPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'to': ?pulumi.Input.mapOptionalInputValue<List<NetworkPolicyPeerPatch>, List<Map<String, dynamic>>>(to, (value) => pulumi.Input.encodeList<NetworkPolicyPeerPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkPolicyEgressRulePatch.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyEgressRulePatch(
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkPolicyPortPatch>(guardedValue, (value) => NetworkPolicyPortPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkPolicyPeerPatch>(guardedValue, (value) => NetworkPolicyPeerPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

