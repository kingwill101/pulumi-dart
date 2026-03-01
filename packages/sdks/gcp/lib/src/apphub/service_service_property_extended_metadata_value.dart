// ignore_for_file: unused_element, unnecessary_cast


class ServiceServicePropertyExtendedMetadataValue {
  /// (Output)
  /// The resource name for the Extended Metadata Schema.
  final String? extendedMetadataSchema;
  /// (Output)
  /// The metadata contents as a JSON string.
  final String? metadataStruct;

  /// Creates a new [ServiceServicePropertyExtendedMetadataValue].
  /// [extendedMetadataSchema] (Output)
  /// [metadataStruct] (Output)
  ServiceServicePropertyExtendedMetadataValue({
    this.extendedMetadataSchema,
    this.metadataStruct,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedMetadataSchema': ?extendedMetadataSchema,
      'metadataStruct': ?metadataStruct,
    };
  }

  factory ServiceServicePropertyExtendedMetadataValue.fromMap(Map<String, dynamic> map) {
    return ServiceServicePropertyExtendedMetadataValue(
      extendedMetadataSchema: map['extendedMetadataSchema'] == null ? null : map['extendedMetadataSchema'] as String,
      metadataStruct: map['metadataStruct'] == null ? null : map['metadataStruct'] as String,
    );
  }
}

