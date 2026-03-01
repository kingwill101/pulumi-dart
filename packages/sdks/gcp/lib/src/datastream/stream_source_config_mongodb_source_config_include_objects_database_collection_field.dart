// ignore_for_file: unused_element, unnecessary_cast


class StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField {
  /// Field name.
  final String? field;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField].
  /// [field] Field name.
  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
    };
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}

