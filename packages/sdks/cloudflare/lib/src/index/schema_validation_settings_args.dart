// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_schema_validation_settings_schema_validation_settings_args_doc}
/// The set of arguments for SchemaValidationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_schema_validation_settings_schema_validation_settings_args_doc}
class SchemaValidationSettingsArgs {
  /// The default mitigation action used
  /// Mitigation actions are as follows:
  ///
  /// - `"log"` - log request when request does not conform to schema
  /// - `"block"` - deny access to the site when request does not conform to schema
  /// - `"none"` - skip running schema validation
  /// Available values: "none", "log", "block".
  final pulumi.Input<String> validationDefaultMitigationAction;
  /// When set, this overrides both zone level and operation level mitigation actions.
  ///
  /// - `"none"` - skip running schema validation entirely for the request
  /// - `null` - clears any existing override
  /// Available values: "none".
  final pulumi.Input<String?>? validationOverrideMitigationAction;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SchemaValidationSettingsArgs].
  /// [validationDefaultMitigationAction] The default mitigation action used
  /// [validationOverrideMitigationAction] When set, this overrides both zone level and operation level mitigation actions.
  /// [zoneId] Identifier.
  const SchemaValidationSettingsArgs({
    required this.validationDefaultMitigationAction,
    this.validationOverrideMitigationAction,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationDefaultMitigationAction': validationDefaultMitigationAction,
      'validationOverrideMitigationAction': ?validationOverrideMitigationAction,
      'zoneId': zoneId,
    };
  }

  factory SchemaValidationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return SchemaValidationSettingsArgs(
      validationDefaultMitigationAction: pulumi.Input.fromValue(map['validationDefaultMitigationAction'] as String),
      validationOverrideMitigationAction: (() { final guardedValue = map['validationOverrideMitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
