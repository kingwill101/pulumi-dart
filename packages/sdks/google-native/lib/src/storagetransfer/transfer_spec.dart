// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_s3_compatible_data.dart';
import 'aws_s3_data.dart';
import 'azure_blob_storage_data.dart';
import 'gcs_data.dart';
import 'http_data.dart';
import 'object_conditions.dart';
import 'posix_filesystem.dart';
import 'transfer_manifest.dart';
import 'transfer_options.dart';

/// Configuration for running a transfer.
class TransferSpec {
  /// An AWS S3 compatible data source.
  final pulumi.Input<AwsS3CompatibleData>? awsS3CompatibleDataSource;
  /// An AWS S3 data source.
  final pulumi.Input<AwsS3Data>? awsS3DataSource;
  /// An Azure Blob Storage data source.
  final pulumi.Input<AzureBlobStorageData>? azureBlobStorageDataSource;
  /// A Cloud Storage data sink.
  final pulumi.Input<GcsData>? gcsDataSink;
  /// A Cloud Storage data source.
  final pulumi.Input<GcsData>? gcsDataSource;
  /// For transfers between file systems, specifies a Cloud Storage bucket to be used as an intermediate location through which to transfer data. See [Transfer data between file systems](https://cloud.google.com/storage-transfer/docs/file-to-file) for more information.
  final pulumi.Input<GcsData>? gcsIntermediateDataLocation;
  /// An HTTP URL data source.
  final pulumi.Input<HttpData>? httpDataSource;
  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' "last modification time" do not exclude objects in a data sink.
  final pulumi.Input<ObjectConditions>? objectConditions;
  /// A POSIX Filesystem data sink.
  final pulumi.Input<PosixFilesystem>? posixDataSink;
  /// A POSIX Filesystem data source.
  final pulumi.Input<PosixFilesystem>? posixDataSource;
  /// Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  final pulumi.Input<String>? sinkAgentPoolName;
  /// Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  final pulumi.Input<String>? sourceAgentPoolName;
  /// A manifest file provides a list of objects to be transferred from the data source. This field points to the location of the manifest file. Otherwise, the entire source bucket is used. ObjectConditions still apply.
  final pulumi.Input<TransferManifest>? transferManifest;
  /// If the option delete_objects_unique_in_sink is `true` and time-based object conditions such as 'last modification time' are specified, the request fails with an INVALID_ARGUMENT error.
  final pulumi.Input<TransferOptions>? transferOptions;

  /// Creates a new [TransferSpec].
  /// [awsS3CompatibleDataSource] An AWS S3 compatible data source.
  /// [awsS3DataSource] An AWS S3 data source.
  /// [azureBlobStorageDataSource] An Azure Blob Storage data source.
  /// [gcsDataSink] A Cloud Storage data sink.
  /// [gcsDataSource] A Cloud Storage data source.
  /// [gcsIntermediateDataLocation] For transfers between file systems, specifies a Cloud Storage bucket to be used as an intermediate location through which to transfer data. See [Transfer data between file systems](https://cloud.google.com/storage-transfer/docs/file-to-file) for more information.
  /// [httpDataSource] An HTTP URL data source.
  /// [objectConditions] Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' "last modification time" do not exclude objects in a data sink.
  /// [posixDataSink] A POSIX Filesystem data sink.
  /// [posixDataSource] A POSIX Filesystem data source.
  /// [sinkAgentPoolName] Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  /// [sourceAgentPoolName] Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  /// [transferManifest] A manifest file provides a list of objects to be transferred from the data source. This field points to the location of the manifest file. Otherwise, the entire source bucket is used. ObjectConditions still apply.
  /// [transferOptions] If the option delete_objects_unique_in_sink is `true` and time-based object conditions such as 'last modification time' are specified, the request fails with an INVALID_ARGUMENT error.
  TransferSpec({
    this.awsS3CompatibleDataSource,
    this.awsS3DataSource,
    this.azureBlobStorageDataSource,
    this.gcsDataSink,
    this.gcsDataSource,
    this.gcsIntermediateDataLocation,
    this.httpDataSource,
    this.objectConditions,
    this.posixDataSink,
    this.posixDataSource,
    this.sinkAgentPoolName,
    this.sourceAgentPoolName,
    this.transferManifest,
    this.transferOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsS3CompatibleDataSource': ?pulumi.Input.mapOptionalInputValue<AwsS3CompatibleData, Map<String, dynamic>>(awsS3CompatibleDataSource, (value) => value.toMap()),
      'awsS3DataSource': ?pulumi.Input.mapOptionalInputValue<AwsS3Data, Map<String, dynamic>>(awsS3DataSource, (value) => value.toMap()),
      'azureBlobStorageDataSource': ?pulumi.Input.mapOptionalInputValue<AzureBlobStorageData, Map<String, dynamic>>(azureBlobStorageDataSource, (value) => value.toMap()),
      'gcsDataSink': ?pulumi.Input.mapOptionalInputValue<GcsData, Map<String, dynamic>>(gcsDataSink, (value) => value.toMap()),
      'gcsDataSource': ?pulumi.Input.mapOptionalInputValue<GcsData, Map<String, dynamic>>(gcsDataSource, (value) => value.toMap()),
      'gcsIntermediateDataLocation': ?pulumi.Input.mapOptionalInputValue<GcsData, Map<String, dynamic>>(gcsIntermediateDataLocation, (value) => value.toMap()),
      'httpDataSource': ?pulumi.Input.mapOptionalInputValue<HttpData, Map<String, dynamic>>(httpDataSource, (value) => value.toMap()),
      'objectConditions': ?pulumi.Input.mapOptionalInputValue<ObjectConditions, Map<String, dynamic>>(objectConditions, (value) => value.toMap()),
      'posixDataSink': ?pulumi.Input.mapOptionalInputValue<PosixFilesystem, Map<String, dynamic>>(posixDataSink, (value) => value.toMap()),
      'posixDataSource': ?pulumi.Input.mapOptionalInputValue<PosixFilesystem, Map<String, dynamic>>(posixDataSource, (value) => value.toMap()),
      'sinkAgentPoolName': ?sinkAgentPoolName,
      'sourceAgentPoolName': ?sourceAgentPoolName,
      'transferManifest': ?pulumi.Input.mapOptionalInputValue<TransferManifest, Map<String, dynamic>>(transferManifest, (value) => value.toMap()),
      'transferOptions': ?pulumi.Input.mapOptionalInputValue<TransferOptions, Map<String, dynamic>>(transferOptions, (value) => value.toMap()),
    };
  }

  factory TransferSpec.fromMap(Map<String, dynamic> map) {
    return TransferSpec(
      awsS3CompatibleDataSource: map['awsS3CompatibleDataSource'] == null ? null : (AwsS3CompatibleData.fromMap((map['awsS3CompatibleDataSource']! as Map).cast<String, dynamic>())).input(),
      awsS3DataSource: map['awsS3DataSource'] == null ? null : (AwsS3Data.fromMap((map['awsS3DataSource']! as Map).cast<String, dynamic>())).input(),
      azureBlobStorageDataSource: map['azureBlobStorageDataSource'] == null ? null : (AzureBlobStorageData.fromMap((map['azureBlobStorageDataSource']! as Map).cast<String, dynamic>())).input(),
      gcsDataSink: map['gcsDataSink'] == null ? null : (GcsData.fromMap((map['gcsDataSink']! as Map).cast<String, dynamic>())).input(),
      gcsDataSource: map['gcsDataSource'] == null ? null : (GcsData.fromMap((map['gcsDataSource']! as Map).cast<String, dynamic>())).input(),
      gcsIntermediateDataLocation: map['gcsIntermediateDataLocation'] == null ? null : (GcsData.fromMap((map['gcsIntermediateDataLocation']! as Map).cast<String, dynamic>())).input(),
      httpDataSource: map['httpDataSource'] == null ? null : (HttpData.fromMap((map['httpDataSource']! as Map).cast<String, dynamic>())).input(),
      objectConditions: map['objectConditions'] == null ? null : (ObjectConditions.fromMap((map['objectConditions']! as Map).cast<String, dynamic>())).input(),
      posixDataSink: map['posixDataSink'] == null ? null : (PosixFilesystem.fromMap((map['posixDataSink']! as Map).cast<String, dynamic>())).input(),
      posixDataSource: map['posixDataSource'] == null ? null : (PosixFilesystem.fromMap((map['posixDataSource']! as Map).cast<String, dynamic>())).input(),
      sinkAgentPoolName: map['sinkAgentPoolName'] == null ? null : (map['sinkAgentPoolName']! as String).input(),
      sourceAgentPoolName: map['sourceAgentPoolName'] == null ? null : (map['sourceAgentPoolName']! as String).input(),
      transferManifest: map['transferManifest'] == null ? null : (TransferManifest.fromMap((map['transferManifest']! as Map).cast<String, dynamic>())).input(),
      transferOptions: map['transferOptions'] == null ? null : (TransferOptions.fromMap((map['transferOptions']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

