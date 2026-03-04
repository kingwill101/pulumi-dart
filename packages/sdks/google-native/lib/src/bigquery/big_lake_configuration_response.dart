// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BigLakeConfigurationResponse {
  /// [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  final pulumi.Input<String> connectionId;

  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final pulumi.Input<String> fileFormat;

  /// [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  final pulumi.Input<String> storageUri;

  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final pulumi.Input<String> tableFormat;

  /// Creates a new [BigLakeConfigurationResponse].
  /// [connectionId] [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  /// [fileFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  /// [storageUri] [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  /// [tableFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  BigLakeConfigurationResponse({
    required this.connectionId,
    required this.fileFormat,
    required this.storageUri,
    required this.tableFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'fileFormat': fileFormat,
      'storageUri': storageUri,
      'tableFormat': tableFormat,
    };
  }

  factory BigLakeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BigLakeConfigurationResponse(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      fileFormat: pulumi.Input.fromValue(map['fileFormat'] as String),
      storageUri: pulumi.Input.fromValue(map['storageUri'] as String),
      tableFormat: pulumi.Input.fromValue(map['tableFormat'] as String),
    );
  }
}
