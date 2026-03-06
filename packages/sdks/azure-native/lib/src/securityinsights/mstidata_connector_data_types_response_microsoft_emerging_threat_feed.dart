// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data type for Microsoft Threat Intelligence data connector.
class MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed {
  /// The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  final pulumi.Input<String> lookbackPeriod;
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed].
  /// [lookbackPeriod] The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  /// [state] Describe whether this data type connection is enabled or not.
  const MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed({
    required this.lookbackPeriod,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookbackPeriod': lookbackPeriod,
      'state': state,
    };
  }

  factory MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed.fromMap(Map<String, dynamic> map) {
    return MSTIDataConnectorDataTypesResponseMicrosoftEmergingThreatFeed(
      lookbackPeriod: pulumi.Input.fromValue(map['lookbackPeriod'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

