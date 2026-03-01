// ignore_for_file: unused_element, unnecessary_cast


/// Helps in identifying the underlying product. This should be treated like a one-of field. Only one field should be set in this proto. This is a workaround because spanner indexes on one-of fields restrict addition and deletion of fields.
class IdentifierHelperResponse {
  /// The field that is set in the API proto.
  final String field;
  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final String genericUri;

  /// Creates a new [IdentifierHelperResponse].
  /// [field] The field that is set in the API proto.
  /// [genericUri] Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  IdentifierHelperResponse({
    required this.field,
    required this.genericUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'genericUri': genericUri,
    };
  }

  factory IdentifierHelperResponse.fromMap(Map<String, dynamic> map) {
    return IdentifierHelperResponse(
      field: map['field'] as String,
      genericUri: map['genericUri'] as String,
    );
  }
}

