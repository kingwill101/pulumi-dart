// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data type for Microsoft Defender for Threat Intelligence Premium data connector.
class PremiumMdtiDataConnectorDataTypesResponseConnector {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [PremiumMdtiDataConnectorDataTypesResponseConnector].
  /// [state] Describe whether this data type connection is enabled or not.
  PremiumMdtiDataConnectorDataTypesResponseConnector({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory PremiumMdtiDataConnectorDataTypesResponseConnector.fromMap(Map<String, dynamic> map) {
    return PremiumMdtiDataConnectorDataTypesResponseConnector(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

