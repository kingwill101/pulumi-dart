// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'premium_mdti_data_connector_data_types_connector.dart';

/// The available data types for Microsoft Defender for Threat Intelligence Premium data connector.
class PremiumMdtiDataConnectorDataTypes {
  /// Data type for Microsoft Defender for Threat Intelligence Premium data connector.
  final pulumi.Input<PremiumMdtiDataConnectorDataTypesConnector> connector;

  /// Creates a new [PremiumMdtiDataConnectorDataTypes].
  /// [connector] Data type for Microsoft Defender for Threat Intelligence Premium data connector.
  PremiumMdtiDataConnectorDataTypes({
    required this.connector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': pulumi.Input.mapInputValue<PremiumMdtiDataConnectorDataTypesConnector, Map<String, dynamic>>(connector, (value) => value.toMap()),
    };
  }

  factory PremiumMdtiDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return PremiumMdtiDataConnectorDataTypes(
      connector: (PremiumMdtiDataConnectorDataTypesConnector.fromMap((map['connector'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

