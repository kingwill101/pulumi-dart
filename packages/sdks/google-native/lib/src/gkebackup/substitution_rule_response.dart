// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_kind_response.dart';

/// A transformation rule to be applied against Kubernetes resources as they are selected for restoration from a Backup. A rule contains both filtering logic (which resources are subject to substitution) and substitution logic.
class SubstitutionRuleResponse {
  /// Optional. This is the new value to set for any fields that pass the filtering and selection criteria. To remove a value from a Kubernetes resource, either leave this field unspecified, or set it to the empty string ("").
  final pulumi.Input<String> newValue;
  /// Optional. (Filtering parameter) This is a [regular expression] (https://en.wikipedia.org/wiki/Regular_expression) that is compared against the fields matched by the target_json_path expression (and must also have passed the previous filters). Substitution will not be performed against fields whose value does not match this expression. If this field is NOT specified, then ALL fields matched by the target_json_path expression will undergo substitution. Note that an empty (e.g., "", rather than unspecified) value for this field will only match empty fields.
  final pulumi.Input<String> originalValuePattern;
  /// Optional. (Filtering parameter) Any resource subject to substitution must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for substitution).
  final pulumi.Input<List<GroupKindResponse>> targetGroupKinds;
  /// This is a [JSONPath] (https://kubernetes.io/docs/reference/kubectl/jsonpath/) expression that matches specific fields of candidate resources and it operates as both a filtering parameter (resources that are not matched with this expression will not be candidates for substitution) as well as a field identifier (identifies exactly which fields out of the candidate resources will be modified).
  final pulumi.Input<String> targetJsonPath;
  /// Optional. (Filtering parameter) Any resource subject to substitution must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for substitution). To mix cluster-scoped and namespaced resources in the same rule, use an empty string ("") as one of the target namespaces.
  final pulumi.Input<List<String>> targetNamespaces;

  /// Creates a new [SubstitutionRuleResponse].
  /// [newValue] Optional. This is the new value to set for any fields that pass the filtering and selection criteria. To remove a value from a Kubernetes resource, either leave this field unspecified, or set it to the empty string ("").
  /// [originalValuePattern] Optional. (Filtering parameter) This is a [regular expression] (https://en.wikipedia.org/wiki/Regular_expression) that is compared against the fields matched by the target_json_path expression (and must also have passed the previous filters). Substitution will not be performed against fields whose value does not match this expression. If this field is NOT specified, then ALL fields matched by the target_json_path expression will undergo substitution. Note that an empty (e.g., "", rather than unspecified) value for this field will only match empty fields.
  /// [targetGroupKinds] Optional. (Filtering parameter) Any resource subject to substitution must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for substitution).
  /// [targetJsonPath] This is a [JSONPath] (https://kubernetes.io/docs/reference/kubectl/jsonpath/) expression that matches specific fields of candidate resources and it operates as both a filtering parameter (resources that are not matched with this expression will not be candidates for substitution) as well as a field identifier (identifies exactly which fields out of the candidate resources will be modified).
  /// [targetNamespaces] Optional. (Filtering parameter) Any resource subject to substitution must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for substitution). To mix cluster-scoped and namespaced resources in the same rule, use an empty string ("") as one of the target namespaces.
  SubstitutionRuleResponse({
    required this.newValue,
    required this.originalValuePattern,
    required this.targetGroupKinds,
    required this.targetJsonPath,
    required this.targetNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newValue': newValue,
      'originalValuePattern': originalValuePattern,
      'targetGroupKinds': pulumi.Input.mapInputValue<List<GroupKindResponse>, List<Map<String, dynamic>>>(targetGroupKinds, (value) => pulumi.Input.encodeList<GroupKindResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetJsonPath': targetJsonPath,
      'targetNamespaces': targetNamespaces,
    };
  }

  factory SubstitutionRuleResponse.fromMap(Map<String, dynamic> map) {
    return SubstitutionRuleResponse(
      newValue: (map['newValue'] as String).input(),
      originalValuePattern: (map['originalValuePattern'] as String).input(),
      targetGroupKinds: (pulumi.Input.decodeList<GroupKindResponse>(map['targetGroupKinds'], (value) => GroupKindResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetJsonPath: (map['targetJsonPath'] as String).input(),
      targetNamespaces: ((map['targetNamespaces'] as List).cast<String>()).input(),
    );
  }
}

