// ignore_for_file: unused_element, unnecessary_cast


/// Teams data type connection.
class OfficeDataConnectorDataTypesTeams {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [OfficeDataConnectorDataTypesTeams].
  /// [state] Describe whether this data type connection is enabled or not.
  OfficeDataConnectorDataTypesTeams({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesTeams.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesTeams(
      state: map['state'] as String,
    );
  }
}

