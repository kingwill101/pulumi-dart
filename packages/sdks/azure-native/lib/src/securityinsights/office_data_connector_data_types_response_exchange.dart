// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exchange data type connection.
class OfficeDataConnectorDataTypesResponseExchange {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [OfficeDataConnectorDataTypesResponseExchange].
  /// [state] Describe whether this data type connection is enabled or not.
  const OfficeDataConnectorDataTypesResponseExchange({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesResponseExchange.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesResponseExchange(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
