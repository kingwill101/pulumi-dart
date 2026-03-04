// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information of a recommendation engine.
class GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse {
  /// The state of data requirements for this engine: `DATA_OK` and `DATA_ERROR`. Engine cannot be trained if the data is in `DATA_ERROR` state. Engine can have `DATA_ERROR` state even if serving state is `ACTIVE`: engines were trained successfully before, but cannot be refreshed because the underlying engine no longer has sufficient data for training.
  final pulumi.Input<String> dataState;

  /// The timestamp when the latest successful tune finished. Only applicable on Media Recommendation engines.
  final pulumi.Input<String> lastTuneTime;

  /// The serving state of the engine: `ACTIVE`, `NOT_ACTIVE`.
  final pulumi.Input<String> servingState;

  /// The latest tune operation id associated with the engine. Only applicable on Media Recommendation engines. If present, this operation id can be used to determine if there is an ongoing tune for this engine. To check the operation status, send the GetOperation request with this operation id in the engine resource format. If no tuning has happened for this engine, the string is empty.
  final pulumi.Input<String> tuningOperation;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse].
  /// [dataState] The state of data requirements for this engine: `DATA_OK` and `DATA_ERROR`. Engine cannot be trained if the data is in `DATA_ERROR` state. Engine can have `DATA_ERROR` state even if serving state is `ACTIVE`: engines were trained successfully before, but cannot be refreshed because the underlying engine no longer has sufficient data for training.
  /// [lastTuneTime] The timestamp when the latest successful tune finished. Only applicable on Media Recommendation engines.
  /// [servingState] The serving state of the engine: `ACTIVE`, `NOT_ACTIVE`.
  /// [tuningOperation] The latest tune operation id associated with the engine. Only applicable on Media Recommendation engines. If present, this operation id can be used to determine if there is an ongoing tune for this engine. To check the operation status, send the GetOperation request with this operation id in the engine resource format. If no tuning has happened for this engine, the string is empty.
  GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse({
    required this.dataState,
    required this.lastTuneTime,
    required this.servingState,
    required this.tuningOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataState': dataState,
      'lastTuneTime': lastTuneTime,
      'servingState': servingState,
      'tuningOperation': tuningOperation,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse(
      dataState: pulumi.Input.fromValue(map['dataState'] as String),
      lastTuneTime: pulumi.Input.fromValue(map['lastTuneTime'] as String),
      servingState: pulumi.Input.fromValue(map['servingState'] as String),
      tuningOperation: pulumi.Input.fromValue(map['tuningOperation'] as String),
    );
  }
}
