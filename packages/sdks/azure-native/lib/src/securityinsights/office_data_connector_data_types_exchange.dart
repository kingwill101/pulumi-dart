// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exchange data type connection.
class OfficeDataConnectorDataTypesExchange {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [OfficeDataConnectorDataTypesExchange].
  /// [state] Describe whether this data type connection is enabled or not.
  const OfficeDataConnectorDataTypesExchange({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesExchange.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesExchange(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
