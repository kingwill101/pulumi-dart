// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common field for data type in data connectors.
class DataConnectorDataTypeCommonResponse {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [DataConnectorDataTypeCommonResponse].
  /// [state] Describe whether this data type connection is enabled or not.
  DataConnectorDataTypeCommonResponse({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory DataConnectorDataTypeCommonResponse.fromMap(Map<String, dynamic> map) {
    return DataConnectorDataTypeCommonResponse(
      state: (map['state'] as String).input(),
    );
  }
}

