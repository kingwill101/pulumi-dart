// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data type for indicators connection.
class TIDataConnectorDataTypesIndicators {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [TIDataConnectorDataTypesIndicators].
  /// [state] Describe whether this data type connection is enabled or not.
  TIDataConnectorDataTypesIndicators({required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory TIDataConnectorDataTypesIndicators.fromMap(Map<String, dynamic> map) {
    return TIDataConnectorDataTypesIndicators(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
