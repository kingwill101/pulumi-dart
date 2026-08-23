// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mstidata_connector_data_types_microsoft_emerging_threat_feed.dart';

/// The available data types for Microsoft Threat Intelligence data connector.
class MSTIDataConnectorDataTypes {
  /// Data type for Microsoft Threat Intelligence data connector.
  final pulumi.Input<MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed> microsoftEmergingThreatFeed;

  /// Creates a new [MSTIDataConnectorDataTypes].
  /// [microsoftEmergingThreatFeed] Data type for Microsoft Threat Intelligence data connector.
  const MSTIDataConnectorDataTypes({
    required this.microsoftEmergingThreatFeed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftEmergingThreatFeed': pulumi.Input.mapInputValue<MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed, Map<String, dynamic>>(microsoftEmergingThreatFeed, (value) => value.toMap()),
    };
  }

  factory MSTIDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return MSTIDataConnectorDataTypes(
      microsoftEmergingThreatFeed: pulumi.Input.fromValue(MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed.fromMap((map['microsoftEmergingThreatFeed']! as Map).cast<String, dynamic>())),
    );
  }
}
