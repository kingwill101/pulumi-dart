// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_mapping_rule_args_doc}
/// Arguments for getMappingRule.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_mapping_rule_args_doc}
class GetMappingRuleArgs {
  final pulumi.Input<String> conversionWorkspaceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> mappingRuleId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMappingRuleArgs].
  /// [conversionWorkspaceId] Required.
  /// [location] Required.
  /// [mappingRuleId] Required.
  /// [project] Optional.
  const GetMappingRuleArgs({
    required this.conversionWorkspaceId,
    required this.location,
    required this.mappingRuleId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionWorkspaceId': conversionWorkspaceId,
      'location': location,
      'mappingRuleId': mappingRuleId,
      'project': ?project,
    };
  }

  factory GetMappingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMappingRuleArgs(
      conversionWorkspaceId: pulumi.Input.fromValue(map['conversionWorkspaceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      mappingRuleId: pulumi.Input.fromValue(map['mappingRuleId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
