// ignore_for_file: unused_element, unnecessary_cast

import 'mstidata_connector_data_types_microsoft_emerging_threat_feed.dart';

/// The available data types for Microsoft Threat Intelligence data connector.
class MSTIDataConnectorDataTypes {
  /// Data type for Microsoft Threat Intelligence data connector.
  final MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed microsoftEmergingThreatFeed;

  /// Creates a new [MSTIDataConnectorDataTypes].
  /// [microsoftEmergingThreatFeed] Data type for Microsoft Threat Intelligence data connector.
  MSTIDataConnectorDataTypes({
    required this.microsoftEmergingThreatFeed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftEmergingThreatFeed': microsoftEmergingThreatFeed.toMap(),
    };
  }

  factory MSTIDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return MSTIDataConnectorDataTypes(
      microsoftEmergingThreatFeed: MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed.fromMap((map['microsoftEmergingThreatFeed'] as Map).cast<String, dynamic>()),
    );
  }
}

