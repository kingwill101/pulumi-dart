// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_peer.dart';
import 'network_policy_port.dart';

/// DEPRECATED 1.9 - This group version of NetworkPolicyIngressRule is deprecated by networking/v1/NetworkPolicyIngressRule. This NetworkPolicyIngressRule matches traffic if and only if the traffic matches both ports AND from.
class NetworkPolicyIngressRule {
  /// List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  final pulumi.Input<List<NetworkPolicyPeer>>? from;
  /// List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final pulumi.Input<List<NetworkPolicyPort>>? ports;

  /// Creates a new [NetworkPolicyIngressRule].
  /// [from] List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  /// [ports] List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  const NetworkPolicyIngressRule({
    this.from,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?pulumi.Input.mapOptionalInputValue<List<NetworkPolicyPeer>, List<Map<String, dynamic>>>(from, (value) => pulumi.Input.encodeList<NetworkPolicyPeer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ports': ?pulumi.Input.mapOptionalInputValue<List<NetworkPolicyPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<NetworkPolicyPort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkPolicyIngressRule.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyIngressRule(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkPolicyPeer>(guardedValue, (value) => NetworkPolicyPeer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkPolicyPort>(guardedValue, (value) => NetworkPolicyPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
