// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_engine_reason_response.dart';

class BiEngineStatisticsResponse {
  /// Specifies which mode of BI Engine acceleration was performed (if any).
  final pulumi.Input<String> accelerationMode;
  /// Specifies which mode of BI Engine acceleration was performed (if any).
  final pulumi.Input<String> biEngineMode;
  /// In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated.
  final pulumi.Input<List<BiEngineReasonResponse>> biEngineReasons;

  /// Creates a new [BiEngineStatisticsResponse].
  /// [accelerationMode] Specifies which mode of BI Engine acceleration was performed (if any).
  /// [biEngineMode] Specifies which mode of BI Engine acceleration was performed (if any).
  /// [biEngineReasons] In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated.
  const BiEngineStatisticsResponse({
    required this.accelerationMode,
    required this.biEngineMode,
    required this.biEngineReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationMode': accelerationMode,
      'biEngineMode': biEngineMode,
      'biEngineReasons': pulumi.Input.mapInputValue<List<BiEngineReasonResponse>, List<Map<String, dynamic>>>(biEngineReasons, (value) => pulumi.Input.encodeList<BiEngineReasonResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BiEngineStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return BiEngineStatisticsResponse(
      accelerationMode: pulumi.Input.fromValue(map['accelerationMode'] as String),
      biEngineMode: pulumi.Input.fromValue(map['biEngineMode'] as String),
      biEngineReasons: pulumi.Input.fromValue(pulumi.Input.decodeList<BiEngineReasonResponse>(map['biEngineReasons']!, (value) => BiEngineReasonResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

