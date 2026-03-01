// ignore_for_file: unused_element, unnecessary_cast

import 'office_data_connector_data_types_exchange.dart';
import 'office_data_connector_data_types_share_point.dart';
import 'office_data_connector_data_types_teams.dart';

/// The available data types for office data connector.
class OfficeDataConnectorDataTypes {
  /// Exchange data type connection.
  final OfficeDataConnectorDataTypesExchange exchange;
  /// SharePoint data type connection.
  final OfficeDataConnectorDataTypesSharePoint sharePoint;
  /// Teams data type connection.
  final OfficeDataConnectorDataTypesTeams teams;

  /// Creates a new [OfficeDataConnectorDataTypes].
  /// [exchange] Exchange data type connection.
  /// [sharePoint] SharePoint data type connection.
  /// [teams] Teams data type connection.
  OfficeDataConnectorDataTypes({
    required this.exchange,
    required this.sharePoint,
    required this.teams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': exchange.toMap(),
      'sharePoint': sharePoint.toMap(),
      'teams': teams.toMap(),
    };
  }

  factory OfficeDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypes(
      exchange: OfficeDataConnectorDataTypesExchange.fromMap((map['exchange'] as Map).cast<String, dynamic>()),
      sharePoint: OfficeDataConnectorDataTypesSharePoint.fromMap((map['sharePoint'] as Map).cast<String, dynamic>()),
      teams: OfficeDataConnectorDataTypesTeams.fromMap((map['teams'] as Map).cast<String, dynamic>()),
    );
  }
}

