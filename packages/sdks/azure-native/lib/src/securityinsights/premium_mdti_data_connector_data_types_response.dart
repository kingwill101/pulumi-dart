// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'premium_mdti_data_connector_data_types_response_connector.dart';

/// The available data types for Microsoft Defender for Threat Intelligence Premium data connector.
class PremiumMdtiDataConnectorDataTypesResponse {
  /// Data type for Microsoft Defender for Threat Intelligence Premium data connector.
  final pulumi.Input<PremiumMdtiDataConnectorDataTypesResponseConnector> connector;

  /// Creates a new [PremiumMdtiDataConnectorDataTypesResponse].
  /// [connector] Data type for Microsoft Defender for Threat Intelligence Premium data connector.
  const PremiumMdtiDataConnectorDataTypesResponse({
    required this.connector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': pulumi.Input.mapInputValue<PremiumMdtiDataConnectorDataTypesResponseConnector, Map<String, dynamic>>(connector, (value) => value.toMap()),
    };
  }

  factory PremiumMdtiDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return PremiumMdtiDataConnectorDataTypesResponse(
      connector: pulumi.Input.fromValue(PremiumMdtiDataConnectorDataTypesResponseConnector.fromMap((map['connector']! as Map).cast<String, dynamic>())),
    );
  }
}

