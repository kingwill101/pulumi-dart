// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
class AggregationRuleRbacAuthorizationK8sIoV1beta1 {
  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  final pulumi.Input<List<LabelSelector>>? clusterRoleSelectors;

  /// Creates a new [AggregationRuleRbacAuthorizationK8sIoV1beta1].
  /// [clusterRoleSelectors] ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  AggregationRuleRbacAuthorizationK8sIoV1beta1({
    this.clusterRoleSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterRoleSelectors': ?pulumi.Input.mapOptionalInputValue<List<LabelSelector>, List<Map<String, dynamic>>>(clusterRoleSelectors, (value) => pulumi.Input.encodeList<LabelSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AggregationRuleRbacAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return AggregationRuleRbacAuthorizationK8sIoV1beta1(
      clusterRoleSelectors: map['clusterRoleSelectors'] == null ? null : (pulumi.Input.decodeList<LabelSelector>(map['clusterRoleSelectors']!, (value) => LabelSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

