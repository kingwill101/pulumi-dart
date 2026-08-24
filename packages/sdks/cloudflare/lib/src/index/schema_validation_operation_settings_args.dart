// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_schema_validation_operation_settings_schema_validation_operation_settings_args_doc}
/// The set of arguments for SchemaValidationOperationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_schema_validation_operation_settings_schema_validation_operation_settings_args_doc}
class SchemaValidationOperationSettingsArgs {
  /// When set, this applies a mitigation action to this operation
  ///
  /// - `"log"` - log request when request does not conform to schema for this operation
  /// - `"block"` - deny access to the site when request does not conform to schema for this operation
  /// - `"none"` - will skip mitigation for this operation
  /// - `null` - clears any mitigation action
  /// Available values: "log", "block", "none".
  final pulumi.Input<String> mitigationAction;
  /// UUID.
  final pulumi.Input<String> operationId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SchemaValidationOperationSettingsArgs].
  /// [mitigationAction] When set, this applies a mitigation action to this operation
  /// [operationId] UUID.
  /// [zoneId] Identifier.
  const SchemaValidationOperationSettingsArgs({
    required this.mitigationAction,
    required this.operationId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationAction': mitigationAction,
      'operationId': operationId,
      'zoneId': zoneId,
    };
  }

  factory SchemaValidationOperationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return SchemaValidationOperationSettingsArgs(
      mitigationAction: pulumi.Input.fromValue(map['mitigationAction'] as String),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
