// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetExternalCatalogDatasetOptions {
  /// The storage location URI for all tables in the dataset. Equivalent to hive metastore's
  /// database locationUri. Maximum length of 1024 characters.
  final pulumi.Input<String>? defaultStorageLocationUri;

  /// A map of key value pairs defining the parameters and properties of the open source schema.
  /// Maximum size of 2Mib.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [DatasetExternalCatalogDatasetOptions].
  /// [defaultStorageLocationUri] The storage location URI for all tables in the dataset. Equivalent to hive metastore's
  /// [parameters] A map of key value pairs defining the parameters and properties of the open source schema.
  DatasetExternalCatalogDatasetOptions({
    this.defaultStorageLocationUri,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocationUri': ?defaultStorageLocationUri,
      'parameters': ?parameters,
    };
  }

  factory DatasetExternalCatalogDatasetOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatasetExternalCatalogDatasetOptions(
      defaultStorageLocationUri: (() {
        final guardedValue = map['defaultStorageLocationUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
