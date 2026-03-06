// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
class AggregationRulePatch {
  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  final pulumi.Input<List<LabelSelectorPatch>>? clusterRoleSelectors;

  /// Creates a new [AggregationRulePatch].
  /// [clusterRoleSelectors] ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  const AggregationRulePatch({
    this.clusterRoleSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterRoleSelectors': ?pulumi.Input.mapOptionalInputValue<List<LabelSelectorPatch>, List<Map<String, dynamic>>>(clusterRoleSelectors, (value) => pulumi.Input.encodeList<LabelSelectorPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AggregationRulePatch.fromMap(Map<String, dynamic> map) {
    return AggregationRulePatch(
      clusterRoleSelectors: (() { final guardedValue = map['clusterRoleSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LabelSelectorPatch>(guardedValue, (value) => LabelSelectorPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

