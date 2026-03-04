// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BigLakeConfiguration {
  /// [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  final pulumi.Input<String>? connectionId;

  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final pulumi.Input<String>? fileFormat;

  /// [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  final pulumi.Input<String>? storageUri;

  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final pulumi.Input<String>? tableFormat;

  /// Creates a new [BigLakeConfiguration].
  /// [connectionId] [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  /// [fileFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  /// [storageUri] [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  /// [tableFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  BigLakeConfiguration({
    this.connectionId,
    this.fileFormat,
    this.storageUri,
    this.tableFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'fileFormat': ?fileFormat,
      'storageUri': ?storageUri,
      'tableFormat': ?tableFormat,
    };
  }

  factory BigLakeConfiguration.fromMap(Map<String, dynamic> map) {
    return BigLakeConfiguration(
      connectionId: (() {
        final guardedValue = map['connectionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileFormat: (() {
        final guardedValue = map['fileFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageUri: (() {
        final guardedValue = map['storageUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableFormat: (() {
        final guardedValue = map['tableFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
