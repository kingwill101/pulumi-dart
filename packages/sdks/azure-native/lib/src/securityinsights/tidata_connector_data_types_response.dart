// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tidata_connector_data_types_response_indicators.dart';

/// The available data types for TI (Threat Intelligence) data connector.
class TIDataConnectorDataTypesResponse {
  /// Data type for indicators connection.
  final pulumi.Input<TIDataConnectorDataTypesResponseIndicators> indicators;

  /// Creates a new [TIDataConnectorDataTypesResponse].
  /// [indicators] Data type for indicators connection.
  TIDataConnectorDataTypesResponse({
    required this.indicators,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indicators': pulumi.Input.mapInputValue<TIDataConnectorDataTypesResponseIndicators, Map<String, dynamic>>(indicators, (value) => value.toMap()),
    };
  }

  factory TIDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return TIDataConnectorDataTypesResponse(
      indicators: (TIDataConnectorDataTypesResponseIndicators.fromMap((map['indicators'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

