// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
class AggregationRulePatchRbacAuthorizationK8sIoV1beta1 {
  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  final pulumi.Input<List<LabelSelectorPatch>?>? clusterRoleSelectors;

  /// Creates a new [AggregationRulePatchRbacAuthorizationK8sIoV1beta1].
  /// [clusterRoleSelectors] ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  const AggregationRulePatchRbacAuthorizationK8sIoV1beta1({
    this.clusterRoleSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterRoleSelectors': ?pulumi.Input.mapOptionalInputValue<List<LabelSelectorPatch>, List<Map<String, dynamic>>>(clusterRoleSelectors, (value) => pulumi.Input.encodeList<LabelSelectorPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AggregationRulePatchRbacAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return AggregationRulePatchRbacAuthorizationK8sIoV1beta1(
      clusterRoleSelectors: (() { final guardedValue = map['clusterRoleSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LabelSelectorPatch>(guardedValue, (value) => LabelSelectorPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
