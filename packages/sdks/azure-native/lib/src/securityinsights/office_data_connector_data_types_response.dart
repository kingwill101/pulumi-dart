// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'office_data_connector_data_types_response_exchange.dart';
import 'office_data_connector_data_types_response_share_point.dart';
import 'office_data_connector_data_types_response_teams.dart';

/// The available data types for office data connector.
class OfficeDataConnectorDataTypesResponse {
  /// Exchange data type connection.
  final pulumi.Input<OfficeDataConnectorDataTypesResponseExchange> exchange;

  /// SharePoint data type connection.
  final pulumi.Input<OfficeDataConnectorDataTypesResponseSharePoint> sharePoint;

  /// Teams data type connection.
  final pulumi.Input<OfficeDataConnectorDataTypesResponseTeams> teams;

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
      'exchange':
          pulumi.Input.mapInputValue<
            OfficeDataConnectorDataTypesResponseExchange,
            Map<String, dynamic>
          >(exchange, (value) => value.toMap()),
      'sharePoint':
          pulumi.Input.mapInputValue<
            OfficeDataConnectorDataTypesResponseSharePoint,
            Map<String, dynamic>
          >(sharePoint, (value) => value.toMap()),
      'teams':
          pulumi.Input.mapInputValue<
            OfficeDataConnectorDataTypesResponseTeams,
            Map<String, dynamic>
          >(teams, (value) => value.toMap()),
    };
  }

  factory OfficeDataConnectorDataTypesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OfficeDataConnectorDataTypesResponse(
      exchange: pulumi.Input.fromValue(
        OfficeDataConnectorDataTypesResponseExchange.fromMap(
          (map['exchange']! as Map).cast<String, dynamic>(),
        ),
      ),
      sharePoint: pulumi.Input.fromValue(
        OfficeDataConnectorDataTypesResponseSharePoint.fromMap(
          (map['sharePoint']! as Map).cast<String, dynamic>(),
        ),
      ),
      teams: pulumi.Input.fromValue(
        OfficeDataConnectorDataTypesResponseTeams.fromMap(
          (map['teams']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
