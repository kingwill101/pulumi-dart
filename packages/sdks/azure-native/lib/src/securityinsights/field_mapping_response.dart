// ignore_for_file: unused_element, unnecessary_cast


/// A single field mapping of the mapped entity
class FieldMappingResponse {
  /// the column name to be mapped to the identifier
  final String? columnName;
  /// the V3 identifier of the entity
  final String? identifier;

  /// Creates a new [FieldMappingResponse].
  /// [columnName] the column name to be mapped to the identifier
  /// [identifier] the V3 identifier of the entity
  FieldMappingResponse({
    this.columnName,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'identifier': ?identifier,
    };
  }

  factory FieldMappingResponse.fromMap(Map<String, dynamic> map) {
    return FieldMappingResponse(
      columnName: map['columnName'] == null ? null : map['columnName'] as String,
      identifier: map['identifier'] == null ? null : map['identifier'] as String,
    );
  }
}

