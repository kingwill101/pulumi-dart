// ignore_for_file: unused_element, unnecessary_cast

import 'mstidata_connector_data_types_response_microsoft_emerging_threat_feed.dart';

/// The available data types for Microsoft Threat Intelligence data connector.
class MSTIDataConnectorDataTypesResponse {
  /// Data type for Microsoft Threat Intelligence data connector.
  final MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed microsoftEmergingThreatFeed;

  /// Creates a new [MSTIDataConnectorDataTypesResponse].
  /// [microsoftEmergingThreatFeed] Data type for Microsoft Threat Intelligence data connector.
  MSTIDataConnectorDataTypesResponse({
    required this.microsoftEmergingThreatFeed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftEmergingThreatFeed': microsoftEmergingThreatFeed.toMap(),
    };
  }

  factory MSTIDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return MSTIDataConnectorDataTypesResponse(
      microsoftEmergingThreatFeed: MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed.fromMap((map['microsoftEmergingThreatFeed'] as Map).cast<String, dynamic>()),
    );
  }
}

