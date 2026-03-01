// ignore_for_file: unused_element, unnecessary_cast


class ApiOperationResponseRepresentationExample {
  /// A long description for this example.
  final String? description;
  /// A URL that points to the literal example.
  final String? externalValue;
  /// The name of this example.
  final String name;
  /// A short description for this example.
  final String? summary;
  /// The example of the representation.
  final String? value;

  /// Creates a new [ApiOperationResponseRepresentationExample].
  /// [description] A long description for this example.
  /// [externalValue] A URL that points to the literal example.
  /// [name] The name of this example.
  /// [summary] A short description for this example.
  /// [value] The example of the representation.
  ApiOperationResponseRepresentationExample({
    this.description,
    this.externalValue,
    required this.name,
    this.summary,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalValue': ?externalValue,
      'name': name,
      'summary': ?summary,
      'value': ?value,
    };
  }

  factory ApiOperationResponseRepresentationExample.fromMap(Map<String, dynamic> map) {
    return ApiOperationResponseRepresentationExample(
      description: map['description'] == null ? null : map['description'] as String,
      externalValue: map['externalValue'] == null ? null : map['externalValue'] as String,
      name: map['name'] as String,
      summary: map['summary'] == null ? null : map['summary'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

