// ignore_for_file: unused_element, unnecessary_cast


/// SharePoint data type connection.
class OfficeDataConnectorDataTypesResponseSharePoint {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [OfficeDataConnectorDataTypesResponseSharePoint].
  /// [state] Describe whether this data type connection is enabled or not.
  OfficeDataConnectorDataTypesResponseSharePoint({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesResponseSharePoint.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesResponseSharePoint(
      state: map['state'] as String,
    );
  }
}

