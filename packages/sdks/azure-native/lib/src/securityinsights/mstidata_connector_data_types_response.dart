// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mstidata_connector_data_types_response_microsoft_emerging_threat_feed.dart';

/// The available data types for Microsoft Threat Intelligence data connector.
class MSTIDataConnectorDataTypesResponse {
  /// Data type for Microsoft Threat Intelligence data connector.
  final pulumi.Input<MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed> microsoftEmergingThreatFeed;

  /// Creates a new [MSTIDataConnectorDataTypesResponse].
  /// [microsoftEmergingThreatFeed] Data type for Microsoft Threat Intelligence data connector.
  const MSTIDataConnectorDataTypesResponse({
    required this.microsoftEmergingThreatFeed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftEmergingThreatFeed': pulumi.Input.mapInputValue<MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed, Map<String, dynamic>>(microsoftEmergingThreatFeed, (value) => value.toMap()),
    };
  }

  factory MSTIDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return MSTIDataConnectorDataTypesResponse(
      microsoftEmergingThreatFeed: pulumi.Input.fromValue(MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed.fromMap((map['microsoftEmergingThreatFeed']! as Map).cast<String, dynamic>())),
    );
  }
}
