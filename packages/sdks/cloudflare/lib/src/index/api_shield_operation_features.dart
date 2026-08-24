// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_features_api_routing.dart';
import 'api_shield_operation_features_confidence_intervals.dart';
import 'api_shield_operation_features_parameter_schemas.dart';
import 'api_shield_operation_features_schema_info.dart';
import 'api_shield_operation_features_thresholds.dart';

class ApiShieldOperationFeatures {
  /// API Routing settings on endpoint.
  final pulumi.Input<ApiShieldOperationFeaturesApiRouting?>? apiRouting;
  final pulumi.Input<ApiShieldOperationFeaturesConfidenceIntervals?>? confidenceIntervals;
  final pulumi.Input<ApiShieldOperationFeaturesParameterSchemas?>? parameterSchemas;
  final pulumi.Input<ApiShieldOperationFeaturesSchemaInfo?>? schemaInfo;
  final pulumi.Input<ApiShieldOperationFeaturesThresholds?>? thresholds;

  /// Creates a new [ApiShieldOperationFeatures].
  /// [apiRouting] API Routing settings on endpoint.
  /// [confidenceIntervals] Optional.
  /// [parameterSchemas] Optional.
  /// [schemaInfo] Optional.
  /// [thresholds] Optional.
  const ApiShieldOperationFeatures({
    this.apiRouting,
    this.confidenceIntervals,
    this.parameterSchemas,
    this.schemaInfo,
    this.thresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiRouting': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesApiRouting, Map<String, dynamic>>(apiRouting, (value) => value.toMap()),
      'confidenceIntervals': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesConfidenceIntervals, Map<String, dynamic>>(confidenceIntervals, (value) => value.toMap()),
      'parameterSchemas': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesParameterSchemas, Map<String, dynamic>>(parameterSchemas, (value) => value.toMap()),
      'schemaInfo': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesSchemaInfo, Map<String, dynamic>>(schemaInfo, (value) => value.toMap()),
      'thresholds': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesThresholds, Map<String, dynamic>>(thresholds, (value) => value.toMap()),
    };
  }

  factory ApiShieldOperationFeatures.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeatures(
      apiRouting: (() { final guardedValue = map['apiRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesApiRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      confidenceIntervals: (() { final guardedValue = map['confidenceIntervals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesConfidenceIntervals.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterSchemas: (() { final guardedValue = map['parameterSchemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesParameterSchemas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaInfo: (() { final guardedValue = map['schemaInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesSchemaInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thresholds: (() { final guardedValue = map['thresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
