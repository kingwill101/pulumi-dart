// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatasetExternalCatalogDatasetOption {
  /// The storage location URI for all tables in the dataset. Equivalent to hive metastore's
  /// database locationUri. Maximum length of 1024 characters.
  final pulumi.Input<String> defaultStorageLocationUri;
  /// A map of key value pairs defining the parameters and properties of the open source schema.
  /// Maximum size of 2Mib.
  final pulumi.Input<Map<String, String>> parameters;

  /// Creates a new [GetDatasetExternalCatalogDatasetOption].
  /// [defaultStorageLocationUri] The storage location URI for all tables in the dataset. Equivalent to hive metastore's
  /// [parameters] A map of key value pairs defining the parameters and properties of the open source schema.
  GetDatasetExternalCatalogDatasetOption({
    required this.defaultStorageLocationUri,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocationUri': defaultStorageLocationUri,
      'parameters': parameters,
    };
  }

  factory GetDatasetExternalCatalogDatasetOption.fromMap(Map<String, dynamic> map) {
    return GetDatasetExternalCatalogDatasetOption(
      defaultStorageLocationUri: (map['defaultStorageLocationUri'] as String).input(),
      parameters: ((map['parameters'] as Map).cast<String, String>()).input(),
    );
  }
}

