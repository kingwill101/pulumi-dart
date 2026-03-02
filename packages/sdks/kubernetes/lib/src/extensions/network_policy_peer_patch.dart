// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';
import 'ipblock_patch.dart';

/// DEPRECATED 1.9 - This group version of NetworkPolicyPeer is deprecated by networking/v1/NetworkPolicyPeer.
class NetworkPolicyPeerPatch {
  /// IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final pulumi.Input<IPBlockPatch>? ipBlock;
  /// Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  /// If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
  final pulumi.Input<LabelSelectorPatch>? namespaceSelector;
  /// This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  ///
  /// If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
  final pulumi.Input<LabelSelectorPatch>? podSelector;

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
      'ipBlock': ?pulumi.Input.mapOptionalInputValue<IPBlockPatch, Map<String, dynamic>>(ipBlock, (value) => value.toMap()),
      'namespaceSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(namespaceSelector, (value) => value.toMap()),
      'podSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(podSelector, (value) => value.toMap()),
    };
  }

  factory NetworkPolicyPeerPatch.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyPeerPatch(
      ipBlock: map['ipBlock'] == null ? null : (IPBlockPatch.fromMap((map['ipBlock']! as Map).cast<String, dynamic>())).input(),
      namespaceSelector: map['namespaceSelector'] == null ? null : (LabelSelectorPatch.fromMap((map['namespaceSelector']! as Map).cast<String, dynamic>())).input(),
      podSelector: map['podSelector'] == null ? null : (LabelSelectorPatch.fromMap((map['podSelector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

