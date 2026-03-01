// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector_patch.dart';
import 'ipblock_patch.dart';

/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of fields are allowed
class NetworkPolicyPeerPatch {
  /// ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final IPBlockPatch? ipBlock;
  /// namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  /// If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector.
  final LabelSelectorPatch? namespaceSelector;
  /// podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  ///
  /// If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace.
  final LabelSelectorPatch? podSelector;

  /// Creates a new [NetworkPolicyPeerPatch].
  /// [ipBlock] ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  /// [namespaceSelector] namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  /// [podSelector] podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  NetworkPolicyPeerPatch({
    this.ipBlock,
    this.namespaceSelector,
    this.podSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlock': ?ipBlock == null ? null : ipBlock!.toMap(),
      'namespaceSelector': ?namespaceSelector == null ? null : namespaceSelector!.toMap(),
      'podSelector': ?podSelector == null ? null : podSelector!.toMap(),
    };
  }

  factory NetworkPolicyPeerPatch.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyPeerPatch(
      ipBlock: map['ipBlock'] == null ? null : IPBlockPatch.fromMap((map['ipBlock'] as Map).cast<String, dynamic>()),
      namespaceSelector: map['namespaceSelector'] == null ? null : LabelSelectorPatch.fromMap((map['namespaceSelector'] as Map).cast<String, dynamic>()),
      podSelector: map['podSelector'] == null ? null : LabelSelectorPatch.fromMap((map['podSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

