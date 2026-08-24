// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operation_features_api_routing.dart';
import 'get_api_shield_operation_features_confidence_intervals.dart';
import 'get_api_shield_operation_features_parameter_schemas.dart';
import 'get_api_shield_operation_features_schema_info.dart';
import 'get_api_shield_operation_features_thresholds.dart';

class GetApiShieldOperationFeatures {
  /// API Routing settings on endpoint.
  final pulumi.Input<GetApiShieldOperationFeaturesApiRouting> apiRouting;
  final pulumi.Input<GetApiShieldOperationFeaturesConfidenceIntervals> confidenceIntervals;
  final pulumi.Input<GetApiShieldOperationFeaturesParameterSchemas> parameterSchemas;
  final pulumi.Input<GetApiShieldOperationFeaturesSchemaInfo> schemaInfo;
  final pulumi.Input<GetApiShieldOperationFeaturesThresholds> thresholds;

  /// Creates a new [GetApiShieldOperationFeatures].
  /// [apiRouting] API Routing settings on endpoint.
  /// [confidenceIntervals] Required.
  /// [parameterSchemas] Required.
  /// [schemaInfo] Required.
  /// [thresholds] Required.
  const GetApiShieldOperationFeatures({
    required this.apiRouting,
    required this.confidenceIntervals,
    required this.parameterSchemas,
    required this.schemaInfo,
    required this.thresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiRouting': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesApiRouting, Map<String, dynamic>>(apiRouting, (value) => value.toMap()),
      'confidenceIntervals': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesConfidenceIntervals, Map<String, dynamic>>(confidenceIntervals, (value) => value.toMap()),
      'parameterSchemas': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesParameterSchemas, Map<String, dynamic>>(parameterSchemas, (value) => value.toMap()),
      'schemaInfo': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesSchemaInfo, Map<String, dynamic>>(schemaInfo, (value) => value.toMap()),
      'thresholds': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesThresholds, Map<String, dynamic>>(thresholds, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationFeatures.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeatures(
      apiRouting: pulumi.Input.fromValue(GetApiShieldOperationFeaturesApiRouting.fromMap((map['apiRouting']! as Map).cast<String, dynamic>())),
      confidenceIntervals: pulumi.Input.fromValue(GetApiShieldOperationFeaturesConfidenceIntervals.fromMap((map['confidenceIntervals']! as Map).cast<String, dynamic>())),
      parameterSchemas: pulumi.Input.fromValue(GetApiShieldOperationFeaturesParameterSchemas.fromMap((map['parameterSchemas']! as Map).cast<String, dynamic>())),
      schemaInfo: pulumi.Input.fromValue(GetApiShieldOperationFeaturesSchemaInfo.fromMap((map['schemaInfo']! as Map).cast<String, dynamic>())),
      thresholds: pulumi.Input.fromValue(GetApiShieldOperationFeaturesThresholds.fromMap((map['thresholds']! as Map).cast<String, dynamic>())),
    );
  }
}
