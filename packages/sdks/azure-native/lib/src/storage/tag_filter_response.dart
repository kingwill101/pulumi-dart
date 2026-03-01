// ignore_for_file: unused_element, unnecessary_cast


/// Blob index tag based filtering for blob objects
class TagFilterResponse {
  /// This is the filter tag name, it can have 1 - 128 characters
  final String name;
  /// This is the comparison operator which is used for object comparison and filtering. Only == (equality operator) is currently supported
  final String op;
  /// This is the filter tag value field used for tag based filtering, it can have 0 - 256 characters
  final String value;

  /// Creates a new [TagFilterResponse].
  /// [name] This is the filter tag name, it can have 1 - 128 characters
  /// [op] This is the comparison operator which is used for object comparison and filtering. Only == (equality operator) is currently supported
  /// [value] This is the filter tag value field used for tag based filtering, it can have 0 - 256 characters
  TagFilterResponse({
    required this.name,
    required this.op,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'op': op,
      'value': value,
    };
  }

  factory TagFilterResponse.fromMap(Map<String, dynamic> map) {
    return TagFilterResponse(
      name: map['name'] as String,
      op: map['op'] as String,
      value: map['value'] as String,
    );
  }
}

