// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tidata_connector_data_types_indicators.dart';

/// The available data types for TI (Threat Intelligence) data connector.
class TIDataConnectorDataTypes {
  /// Data type for indicators connection.
  final pulumi.Input<TIDataConnectorDataTypesIndicators> indicators;

  /// Creates a new [TIDataConnectorDataTypes].
  /// [indicators] Data type for indicators connection.
  TIDataConnectorDataTypes({
    required this.indicators,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indicators': pulumi.Input.mapInputValue<TIDataConnectorDataTypesIndicators, Map<String, dynamic>>(indicators, (value) => value.toMap()),
    };
  }

  factory TIDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return TIDataConnectorDataTypes(
      indicators: pulumi.Input.fromValue(TIDataConnectorDataTypesIndicators.fromMap((map['indicators']! as Map).cast<String, dynamic>())),
    );
  }
}

