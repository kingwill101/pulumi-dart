// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SharePoint data type connection.
class OfficeDataConnectorDataTypesResponseSharePoint {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [OfficeDataConnectorDataTypesResponseSharePoint].
  /// [state] Describe whether this data type connection is enabled or not.
  const OfficeDataConnectorDataTypesResponseSharePoint({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesResponseSharePoint.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesResponseSharePoint(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

