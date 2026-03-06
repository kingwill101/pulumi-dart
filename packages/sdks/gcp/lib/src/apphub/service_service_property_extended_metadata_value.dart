// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServicePropertyExtendedMetadataValue {
  /// (Output)
  /// The resource name for the Extended Metadata Schema.
  final pulumi.Input<String>? extendedMetadataSchema;
  /// (Output)
  /// The metadata contents as a JSON string.
  final pulumi.Input<String>? metadataStruct;

  /// Creates a new [ServiceServicePropertyExtendedMetadataValue].
  /// [extendedMetadataSchema] (Output)
  /// [metadataStruct] (Output)
  const ServiceServicePropertyExtendedMetadataValue({
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
      extendedMetadataSchema: (() { final guardedValue = map['extendedMetadataSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataStruct: (() { final guardedValue = map['metadataStruct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

