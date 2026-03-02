// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';
import 'ipblock.dart';

/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of fields are allowed
class NetworkPolicyPeer {
  /// ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final pulumi.Input<IPBlock>? ipBlock;
  /// namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  /// If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector.
  final pulumi.Input<LabelSelector>? namespaceSelector;
  /// podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  ///
  /// If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace.
  final pulumi.Input<LabelSelector>? podSelector;

  /// Creates a new [NetworkPolicyPeer].
  /// [ipBlock] ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  /// [namespaceSelector] namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  /// [podSelector] podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  NetworkPolicyPeer({
    this.ipBlock,
    this.namespaceSelector,
    this.podSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlock': ?pulumi.Input.mapOptionalInputValue<IPBlock, Map<String, dynamic>>(ipBlock, (value) => value.toMap()),
      'namespaceSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(namespaceSelector, (value) => value.toMap()),
      'podSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(podSelector, (value) => value.toMap()),
    };
  }

  factory NetworkPolicyPeer.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyPeer(
      ipBlock: map['ipBlock'] == null ? null : (IPBlock.fromMap((map['ipBlock']! as Map).cast<String, dynamic>())).input(),
      namespaceSelector: map['namespaceSelector'] == null ? null : (LabelSelector.fromMap((map['namespaceSelector']! as Map).cast<String, dynamic>())).input(),
      podSelector: map['podSelector'] == null ? null : (LabelSelector.fromMap((map['podSelector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

