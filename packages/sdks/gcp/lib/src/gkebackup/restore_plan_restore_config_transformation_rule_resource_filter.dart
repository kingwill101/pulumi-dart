// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_transformation_rule_resource_filter_group_kind.dart';

class RestorePlanRestoreConfigTransformationRuleResourceFilter {
  /// (Filtering parameter) Any resource subject to transformation must
  /// belong to one of the listed "types". If this field is not provided,
  /// no type filtering will be performed
  /// (all resources of all types matching previous filtering parameters
  /// will be candidates for transformation).
  /// Structure is documented below.
  final pulumi.Input<List<RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind>>? groupKinds;
  /// This is a JSONPath expression that matches specific fields of
  /// candidate resources and it operates as a filtering parameter
  /// (resources that are not matched with this expression will not
  /// be candidates for transformation).
  final pulumi.Input<String>? jsonPath;
  /// (Filtering parameter) Any resource subject to transformation must
  /// be contained within one of the listed Kubernetes Namespace in the
  /// Backup. If this field is not provided, no namespace filtering will
  /// be performed (all resources in all Namespaces, including all
  /// cluster-scoped resources, will be candidates for transformation).
  /// To mix cluster-scoped and namespaced resources in the same rule,
  /// use an empty string ("") as one of the target namespaces.
  final pulumi.Input<List<String>>? namespaces;

  /// Creates a new [RestorePlanRestoreConfigTransformationRuleResourceFilter].
  /// [groupKinds] (Filtering parameter) Any resource subject to transformation must
  /// [jsonPath] This is a JSONPath expression that matches specific fields of
  /// [namespaces] (Filtering parameter) Any resource subject to transformation must
  const RestorePlanRestoreConfigTransformationRuleResourceFilter({
    this.groupKinds,
    this.jsonPath,
    this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupKinds': ?pulumi.Input.mapOptionalInputValue<List<RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind>, List<Map<String, dynamic>>>(groupKinds, (value) => pulumi.Input.encodeList<RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jsonPath': ?jsonPath,
      'namespaces': ?namespaces,
    };
  }

  factory RestorePlanRestoreConfigTransformationRuleResourceFilter.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigTransformationRuleResourceFilter(
      groupKinds: (() { final guardedValue = map['groupKinds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind>(guardedValue, (value) => RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jsonPath: (() { final guardedValue = map['jsonPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

