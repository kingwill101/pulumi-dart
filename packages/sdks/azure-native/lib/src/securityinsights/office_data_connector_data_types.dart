// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'office_data_connector_data_types_exchange.dart';
import 'office_data_connector_data_types_share_point.dart';
import 'office_data_connector_data_types_teams.dart';

/// The available data types for office data connector.
class OfficeDataConnectorDataTypes {
  /// Exchange data type connection.
  final pulumi.Input<OfficeDataConnectorDataTypesExchange> exchange;
  /// SharePoint data type connection.
  final pulumi.Input<OfficeDataConnectorDataTypesSharePoint> sharePoint;
  /// Teams data type connection.
  final pulumi.Input<OfficeDataConnectorDataTypesTeams> teams;

  /// Creates a new [OfficeDataConnectorDataTypes].
  /// [exchange] Exchange data type connection.
  /// [sharePoint] SharePoint data type connection.
  /// [teams] Teams data type connection.
  const OfficeDataConnectorDataTypes({
    required this.exchange,
    required this.sharePoint,
    required this.teams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': pulumi.Input.mapInputValue<OfficeDataConnectorDataTypesExchange, Map<String, dynamic>>(exchange, (value) => value.toMap()),
      'sharePoint': pulumi.Input.mapInputValue<OfficeDataConnectorDataTypesSharePoint, Map<String, dynamic>>(sharePoint, (value) => value.toMap()),
      'teams': pulumi.Input.mapInputValue<OfficeDataConnectorDataTypesTeams, Map<String, dynamic>>(teams, (value) => value.toMap()),
    };
  }

  factory OfficeDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypes(
      exchange: pulumi.Input.fromValue(OfficeDataConnectorDataTypesExchange.fromMap((map['exchange']! as Map).cast<String, dynamic>())),
      sharePoint: pulumi.Input.fromValue(OfficeDataConnectorDataTypesSharePoint.fromMap((map['sharePoint']! as Map).cast<String, dynamic>())),
      teams: pulumi.Input.fromValue(OfficeDataConnectorDataTypesTeams.fromMap((map['teams']! as Map).cast<String, dynamic>())),
    );
  }
}
