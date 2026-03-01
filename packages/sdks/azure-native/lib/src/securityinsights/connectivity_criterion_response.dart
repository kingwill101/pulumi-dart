// ignore_for_file: unused_element, unnecessary_cast


/// The criteria by which we determine whether the connector is connected or not.
/// For Example, use a KQL query to check if  the expected data type is flowing).
class ConnectivityCriterionResponse {
  /// Gets or sets the type of connectivity.
  final String type;
  /// Gets or sets the queries for checking connectivity.
  final List<String>? value;

  /// Creates a new [ConnectivityCriterionResponse].
  /// [type] Gets or sets the type of connectivity.
  /// [value] Gets or sets the queries for checking connectivity.
  ConnectivityCriterionResponse({
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
      type: map['type'] as String,
      value: map['value'] == null ? null : (map['value'] as List).cast<String>(),
    );
  }
}

