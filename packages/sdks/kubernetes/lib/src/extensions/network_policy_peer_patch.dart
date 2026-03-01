// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector_patch.dart';
import 'ipblock_patch.dart';

/// DEPRECATED 1.9 - This group version of NetworkPolicyPeer is deprecated by networking/v1/NetworkPolicyPeer.
class NetworkPolicyPeerPatch {
  /// IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final IPBlockPatch? ipBlock;
  /// Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  /// If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
  final LabelSelectorPatch? namespaceSelector;
  /// This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  ///
  /// If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
  final LabelSelectorPatch? podSelector;

  /// Creates a new [NetworkPolicyPeerPatch].
  /// [ipBlock] IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  /// [namespaceSelector] Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  /// [podSelector] This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
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

