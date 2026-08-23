// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
class AggregationRule {
  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  final pulumi.Input<List<LabelSelector>>? clusterRoleSelectors;

  /// Creates a new [AggregationRule].
  /// [clusterRoleSelectors] ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  const AggregationRule({
    this.clusterRoleSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterRoleSelectors': ?pulumi.Input.mapOptionalInputValue<List<LabelSelector>, List<Map<String, dynamic>>>(clusterRoleSelectors, (value) => pulumi.Input.encodeList<LabelSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AggregationRule.fromMap(Map<String, dynamic> map) {
    return AggregationRule(
      clusterRoleSelectors: (() { final guardedValue = map['clusterRoleSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LabelSelector>(guardedValue, (value) => LabelSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
