// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchemaVersionSchemaMetadata {
  /// If true, on a given page, there can be multiple `document` annotations covering it.
  final pulumi.Input<bool?>? documentAllowMultipleLabels;
  /// If true, a `document` entity type can be applied to subdocument (splitting). Otherwise, it can only be applied to the entire document (classification).
  final pulumi.Input<bool?>? documentSplitter;
  /// If set, all the nested entities must be prefixed with the parents.
  final pulumi.Input<bool?>? prefixedNamingOnProperties;
  /// If set, this will skip the naming format validation in the schema. So the string values in `DocumentSchema.EntityType.name` and `DocumentSchema.EntityType.Property.name` will not be checked.
  final pulumi.Input<bool?>? skipNamingValidation;

  /// Creates a new [SchemaVersionSchemaMetadata].
  /// [documentAllowMultipleLabels] If true, on a given page, there can be multiple `document` annotations covering it.
  /// [documentSplitter] If true, a `document` entity type can be applied to subdocument (splitting). Otherwise, it can only be applied to the entire document (classification).
  /// [prefixedNamingOnProperties] If set, all the nested entities must be prefixed with the parents.
  /// [skipNamingValidation] If set, this will skip the naming format validation in the schema. So the string values in `DocumentSchema.EntityType.name` and `DocumentSchema.EntityType.Property.name` will not be checked.
  const SchemaVersionSchemaMetadata({
    this.documentAllowMultipleLabels,
    this.documentSplitter,
    this.prefixedNamingOnProperties,
    this.skipNamingValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentAllowMultipleLabels': ?documentAllowMultipleLabels,
      'documentSplitter': ?documentSplitter,
      'prefixedNamingOnProperties': ?prefixedNamingOnProperties,
      'skipNamingValidation': ?skipNamingValidation,
    };
  }

  factory SchemaVersionSchemaMetadata.fromMap(Map<String, dynamic> map) {
    return SchemaVersionSchemaMetadata(
      documentAllowMultipleLabels: (() { final guardedValue = map['documentAllowMultipleLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      documentSplitter: (() { final guardedValue = map['documentSplitter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixedNamingOnProperties: (() { final guardedValue = map['prefixedNamingOnProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipNamingValidation: (() { final guardedValue = map['skipNamingValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
