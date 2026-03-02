// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo {
  /// Name of the SerDe. The maximum length is 256 characters.
  final pulumi.Input<String>? name;
  /// Key-value pairs that define the initialization
  /// parameters for the serialization library. Maximum size 10 Kib.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Specifies a fully-qualified class name of
  /// the serialization library that is responsible for the translation of data
  /// between table representation and the underlying low-level input and output
  /// format structures. The maximum length is 256 characters.
  final pulumi.Input<String> serializationLibrary;

  /// Creates a new [TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo].
  /// [name] Name of the SerDe. The maximum length is 256 characters.
  /// [parameters] Key-value pairs that define the initialization
  /// [serializationLibrary] Specifies a fully-qualified class name of
  TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo({
    this.name,
    this.parameters,
    required this.serializationLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameters': ?parameters,
      'serializationLibrary': serializationLibrary,
    };
  }

  factory TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo.fromMap(Map<String, dynamic> map) {
    return TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      serializationLibrary: (map['serializationLibrary'] as String).input(),
    );
  }
}

