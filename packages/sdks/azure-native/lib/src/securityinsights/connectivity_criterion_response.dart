// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The criteria by which we determine whether the connector is connected or not.
/// For Example, use a KQL query to check if  the expected data type is flowing).
class ConnectivityCriterionResponse {
  /// Gets or sets the type of connectivity.
  final pulumi.Input<String> type;
  /// Gets or sets the queries for checking connectivity.
  final pulumi.Input<List<String>>? value;

  /// Creates a new [ConnectivityCriterionResponse].
  /// [type] Gets or sets the type of connectivity.
  /// [value] Gets or sets the queries for checking connectivity.
  const ConnectivityCriterionResponse({
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': ?value,
    };
  }

  factory ConnectivityCriterionResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityCriterionResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
