// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key &lt;topologyKey&gt; matches that of any node on which a pod of the set of pods is running
class PodAffinityTermPatch {
  /// A label query over a set of resources, in this case pods. If it's null, this PodAffinityTerm matches with no Pods.
  final pulumi.Input<LabelSelectorPatch>? labelSelector;
  /// MatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key in (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both matchLabelKeys and labelSelector. Also, matchLabelKeys cannot be set when labelSelector isn't set.
  final pulumi.Input<List<String>>? matchLabelKeys;
  /// MismatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key notin (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both mismatchLabelKeys and labelSelector. Also, mismatchLabelKeys cannot be set when labelSelector isn't set.
  final pulumi.Input<List<String>>? mismatchLabelKeys;
  /// A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces.
  final pulumi.Input<LabelSelectorPatch>? namespaceSelector;
  /// namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace".
  final pulumi.Input<List<String>>? namespaces;
  /// This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
  final pulumi.Input<String>? topologyKey;

  /// Creates a new [PodAffinityTermPatch].
  /// [labelSelector] A label query over a set of resources, in this case pods. If it's null, this PodAffinityTerm matches with no Pods.
  /// [matchLabelKeys] MatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key in (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both matchLabelKeys and labelSelector. Also, matchLabelKeys cannot be set when labelSelector isn't set.
  /// [mismatchLabelKeys] MismatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key notin (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both mismatchLabelKeys and labelSelector. Also, mismatchLabelKeys cannot be set when labelSelector isn't set.
  /// [namespaceSelector] A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces.
  /// [namespaces] namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace".
  /// [topologyKey] This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
  const PodAffinityTermPatch({
    this.labelSelector,
    this.matchLabelKeys,
    this.mismatchLabelKeys,
    this.namespaceSelector,
    this.namespaces,
    this.topologyKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
      'matchLabelKeys': ?matchLabelKeys,
      'mismatchLabelKeys': ?mismatchLabelKeys,
      'namespaceSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(namespaceSelector, (value) => value.toMap()),
      'namespaces': ?namespaces,
      'topologyKey': ?topologyKey,
    };
  }

  factory PodAffinityTermPatch.fromMap(Map<String, dynamic> map) {
    return PodAffinityTermPatch(
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchLabelKeys: (() { final guardedValue = map['matchLabelKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mismatchLabelKeys: (() { final guardedValue = map['mismatchLabelKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      namespaceSelector: (() { final guardedValue = map['namespaceSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      topologyKey: (() { final guardedValue = map['topologyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
