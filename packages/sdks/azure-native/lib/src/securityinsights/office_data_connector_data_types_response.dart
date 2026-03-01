// ignore_for_file: unused_element, unnecessary_cast

import 'office_data_connector_data_types_response_exchange.dart';
import 'office_data_connector_data_types_response_share_point.dart';
import 'office_data_connector_data_types_response_teams.dart';

/// The available data types for office data connector.
class OfficeDataConnectorDataTypesResponse {
  /// Exchange data type connection.
  final OfficeDataConnectorDataTypesResponseExchange exchange;
  /// SharePoint data type connection.
  final OfficeDataConnectorDataTypesResponseSharePoint sharePoint;
  /// Teams data type connection.
  final OfficeDataConnectorDataTypesResponseTeams teams;

  /// Creates a new [OfficeDataConnectorDataTypesResponse].
  /// [exchange] Exchange data type connection.
  /// [sharePoint] SharePoint data type connection.
  /// [teams] Teams data type connection.
  OfficeDataConnectorDataTypesResponse({
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

  factory OfficeDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesResponse(
      exchange: OfficeDataConnectorDataTypesResponseExchange.fromMap((map['exchange'] as Map).cast<String, dynamic>()),
      sharePoint: OfficeDataConnectorDataTypesResponseSharePoint.fromMap((map['sharePoint'] as Map).cast<String, dynamic>()),
      teams: OfficeDataConnectorDataTypesResponseTeams.fromMap((map['teams'] as Map).cast<String, dynamic>()),
    );
  }
}

