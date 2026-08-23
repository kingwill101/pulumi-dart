// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_peer_patch.dart';
import 'network_policy_port_patch.dart';

/// NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
class NetworkPolicyIngressRulePatch {
  /// from is a list of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  final pulumi.Input<List<NetworkPolicyPeerPatch>>? from;
  /// ports is a list of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final pulumi.Input<List<NetworkPolicyPortPatch>>? ports;

  /// Creates a new [NetworkPolicyIngressRulePatch].
  /// [from] from is a list of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  /// [ports] ports is a list of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  const NetworkPolicyIngressRulePatch({
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
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkPolicyPeerPatch>(guardedValue, (value) => NetworkPolicyPeerPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkPolicyPortPatch>(guardedValue, (value) => NetworkPolicyPortPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
