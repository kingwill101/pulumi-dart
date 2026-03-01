// ignore_for_file: unused_element, unnecessary_cast


/// Exchange data type connection.
class OfficeDataConnectorDataTypesExchange {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [OfficeDataConnectorDataTypesExchange].
  /// [state] Describe whether this data type connection is enabled or not.
  OfficeDataConnectorDataTypesExchange({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesExchange.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesExchange(
      state: map['state'] as String,
    );
  }
}

