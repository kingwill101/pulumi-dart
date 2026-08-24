// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result_features_api_routing.dart';
import 'get_api_shield_operations_result_features_confidence_intervals.dart';
import 'get_api_shield_operations_result_features_parameter_schemas.dart';
import 'get_api_shield_operations_result_features_schema_info.dart';
import 'get_api_shield_operations_result_features_thresholds.dart';

class GetApiShieldOperationsResultFeatures {
  /// API Routing settings on endpoint.
  final pulumi.Input<GetApiShieldOperationsResultFeaturesApiRouting> apiRouting;
  final pulumi.Input<GetApiShieldOperationsResultFeaturesConfidenceIntervals> confidenceIntervals;
  final pulumi.Input<GetApiShieldOperationsResultFeaturesParameterSchemas> parameterSchemas;
  final pulumi.Input<GetApiShieldOperationsResultFeaturesSchemaInfo> schemaInfo;
  final pulumi.Input<GetApiShieldOperationsResultFeaturesThresholds> thresholds;

  /// Creates a new [GetApiShieldOperationsResultFeatures].
  /// [apiRouting] API Routing settings on endpoint.
  /// [confidenceIntervals] Required.
  /// [parameterSchemas] Required.
  /// [schemaInfo] Required.
  /// [thresholds] Required.
  const GetApiShieldOperationsResultFeatures({
    required this.apiRouting,
    required this.confidenceIntervals,
    required this.parameterSchemas,
    required this.schemaInfo,
    required this.thresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiRouting': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesApiRouting, Map<String, dynamic>>(apiRouting, (value) => value.toMap()),
      'confidenceIntervals': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesConfidenceIntervals, Map<String, dynamic>>(confidenceIntervals, (value) => value.toMap()),
      'parameterSchemas': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesParameterSchemas, Map<String, dynamic>>(parameterSchemas, (value) => value.toMap()),
      'schemaInfo': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesSchemaInfo, Map<String, dynamic>>(schemaInfo, (value) => value.toMap()),
      'thresholds': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesThresholds, Map<String, dynamic>>(thresholds, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationsResultFeatures.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeatures(
      apiRouting: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesApiRouting.fromMap((map['apiRouting']! as Map).cast<String, dynamic>())),
      confidenceIntervals: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesConfidenceIntervals.fromMap((map['confidenceIntervals']! as Map).cast<String, dynamic>())),
      parameterSchemas: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesParameterSchemas.fromMap((map['parameterSchemas']! as Map).cast<String, dynamic>())),
      schemaInfo: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesSchemaInfo.fromMap((map['schemaInfo']! as Map).cast<String, dynamic>())),
      thresholds: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesThresholds.fromMap((map['thresholds']! as Map).cast<String, dynamic>())),
    );
  }
}
