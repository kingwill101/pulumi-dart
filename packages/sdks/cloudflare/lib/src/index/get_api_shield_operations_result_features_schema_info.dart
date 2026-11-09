// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result_features_schema_info_active_schema.dart';

class GetApiShieldOperationsResultFeaturesSchemaInfo {
  /// Schema active on endpoint.
  final pulumi.Input<GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema> activeSchema;
  /// Action taken on requests failing validation.
  /// Available values: "none", "log", "block".
  final pulumi.Input<String> mitigationAction;

  /// Creates a new [GetApiShieldOperationsResultFeaturesSchemaInfo].
  /// [activeSchema] Schema active on endpoint.
  /// [mitigationAction] Action taken on requests failing validation.
  const GetApiShieldOperationsResultFeaturesSchemaInfo({
    required this.activeSchema,
    required this.mitigationAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSchema': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema, Map<String, dynamic>>(activeSchema, (value) => value.toMap()),
      'mitigationAction': mitigationAction,
    };
  }

  factory GetApiShieldOperationsResultFeaturesSchemaInfo.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesSchemaInfo(
      activeSchema: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema.fromMap((map['activeSchema']! as Map).cast<String, dynamic>())),
      mitigationAction: pulumi.Input.fromValue(map['mitigationAction'] as String),
    );
  }
}
