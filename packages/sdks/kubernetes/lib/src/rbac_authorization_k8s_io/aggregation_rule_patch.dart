// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
class AggregationRulePatch {
  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  final List<LabelSelectorPatch>? clusterRoleSelectors;

  /// Creates a new [AggregationRulePatch].
  /// [clusterRoleSelectors] ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  AggregationRulePatch({
    this.clusterRoleSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterRoleSelectors': ?clusterRoleSelectors == null ? null : pulumi.Input.encodeList<LabelSelectorPatch, Map<String, dynamic>>(clusterRoleSelectors!, (value) => value.toMap()),
    };
  }

  factory AggregationRulePatch.fromMap(Map<String, dynamic> map) {
    return AggregationRulePatch(
      clusterRoleSelectors: map['clusterRoleSelectors'] == null ? null : pulumi.Input.decodeList<LabelSelectorPatch>(map['clusterRoleSelectors'], (value) => LabelSelectorPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

