// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_features_schema_info_active_schema.dart';

class ApiShieldOperationFeaturesSchemaInfo {
  /// Schema active on endpoint.
  final pulumi.Input<ApiShieldOperationFeaturesSchemaInfoActiveSchema?>? activeSchema;
  /// Deprecated. Always false.
  final pulumi.Input<bool?>? learnedAvailable;
  /// Action taken on requests failing validation.
  /// Available values: "none", "log", "block".
  final pulumi.Input<String?>? mitigationAction;

  /// Creates a new [ApiShieldOperationFeaturesSchemaInfo].
  /// [activeSchema] Schema active on endpoint.
  /// [learnedAvailable] Deprecated. Always false.
  /// [mitigationAction] Action taken on requests failing validation.
  const ApiShieldOperationFeaturesSchemaInfo({
    this.activeSchema,
    this.learnedAvailable,
    this.mitigationAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSchema': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesSchemaInfoActiveSchema, Map<String, dynamic>>(activeSchema, (value) => value.toMap()),
      'learnedAvailable': ?learnedAvailable,
      'mitigationAction': ?mitigationAction,
    };
  }

  factory ApiShieldOperationFeaturesSchemaInfo.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesSchemaInfo(
      activeSchema: (() { final guardedValue = map['activeSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesSchemaInfoActiveSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      learnedAvailable: (() { final guardedValue = map['learnedAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mitigationAction: (() { final guardedValue = map['mitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
