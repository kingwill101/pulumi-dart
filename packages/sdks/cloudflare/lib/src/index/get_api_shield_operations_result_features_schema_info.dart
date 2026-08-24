// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result_features_schema_info_active_schema.dart';

class GetApiShieldOperationsResultFeaturesSchemaInfo {
  /// Schema active on endpoint.
  final pulumi.Input<GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema> activeSchema;
  /// Deprecated. Always false.
  final pulumi.Input<bool> learnedAvailable;
  /// Action taken on requests failing validation.
  /// Available values: "none", "log", "block".
  final pulumi.Input<String> mitigationAction;

  /// Creates a new [GetApiShieldOperationsResultFeaturesSchemaInfo].
  /// [activeSchema] Schema active on endpoint.
  /// [learnedAvailable] Deprecated. Always false.
  /// [mitigationAction] Action taken on requests failing validation.
  const GetApiShieldOperationsResultFeaturesSchemaInfo({
    required this.activeSchema,
    required this.learnedAvailable,
    required this.mitigationAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSchema': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema, Map<String, dynamic>>(activeSchema, (value) => value.toMap()),
      'learnedAvailable': learnedAvailable,
      'mitigationAction': mitigationAction,
    };
  }

  factory GetApiShieldOperationsResultFeaturesSchemaInfo.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesSchemaInfo(
      activeSchema: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema.fromMap((map['activeSchema']! as Map).cast<String, dynamic>())),
      learnedAvailable: pulumi.Input.fromValue(map['learnedAvailable'] as bool),
      mitigationAction: pulumi.Input.fromValue(map['mitigationAction'] as String),
    );
  }
}
