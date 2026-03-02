// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_transfer_spec_aws_s3_compatible_data_source.dart';
import 'transfer_job_transfer_spec_aws_s3_data_source.dart';
import 'transfer_job_transfer_spec_azure_blob_storage_data_source.dart';
import 'transfer_job_transfer_spec_gcs_data_sink.dart';
import 'transfer_job_transfer_spec_gcs_data_source.dart';
import 'transfer_job_transfer_spec_hdfs_data_source.dart';
import 'transfer_job_transfer_spec_http_data_source.dart';
import 'transfer_job_transfer_spec_object_conditions.dart';
import 'transfer_job_transfer_spec_posix_data_sink.dart';
import 'transfer_job_transfer_spec_posix_data_source.dart';
import 'transfer_job_transfer_spec_transfer_manifest.dart';
import 'transfer_job_transfer_spec_transfer_options.dart';

class TransferJobTransferSpec {
  /// An AWS S3 Compatible data source. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecAwsS3CompatibleDataSource>? awsS3CompatibleDataSource;
  /// An AWS S3 data source. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecAwsS3DataSource>? awsS3DataSource;
  /// An Azure Blob Storage data source. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecAzureBlobStorageDataSource>? azureBlobStorageDataSource;
  /// A Google Cloud Storage data sink. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecGcsDataSink>? gcsDataSink;
  /// A Google Cloud Storage data source. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecGcsDataSource>? gcsDataSource;
  /// An HDFS data source. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecHdfsDataSource>? hdfsDataSource;
  /// A HTTP URL data source. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecHttpDataSource>? httpDataSource;
  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' `last_modification_time` do not exclude objects in a data sink. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecObjectConditions>? objectConditions;
  /// A POSIX data sink. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecPosixDataSink>? posixDataSink;
  /// A POSIX filesystem data source. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecPosixDataSource>? posixDataSource;
  /// Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  final pulumi.Input<String>? sinkAgentPoolName;
  /// Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  final pulumi.Input<String>? sourceAgentPoolName;
  /// Use a manifest file to limit which object are transferred. See [Storage Transfer Service manifest file format](https://cloud.google.com/storage-transfer/docs/manifest). Structure documented below.
  final pulumi.Input<TransferJobTransferSpecTransferManifest>? transferManifest;
  /// Characteristics of how to treat files from datasource and sink during job. If the option `delete_objects_unique_in_sink` is true, object conditions based on objects' `last_modification_time` are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecTransferOptions>? transferOptions;

  /// Creates a new [TransferJobTransferSpec].
  /// [awsS3CompatibleDataSource] An AWS S3 Compatible data source. Structure documented below.
  /// [awsS3DataSource] An AWS S3 data source. Structure documented below.
  /// [azureBlobStorageDataSource] An Azure Blob Storage data source. Structure documented below.
  /// [gcsDataSink] A Google Cloud Storage data sink. Structure documented below.
  /// [gcsDataSource] A Google Cloud Storage data source. Structure documented below.
  /// [hdfsDataSource] An HDFS data source. Structure documented below.
  /// [httpDataSource] A HTTP URL data source. Structure documented below.
  /// [objectConditions] Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' `last_modification_time` do not exclude objects in a data sink. Structure documented below.
  /// [posixDataSink] A POSIX data sink. Structure documented below.
  /// [posixDataSource] A POSIX filesystem data source. Structure documented below.
  /// [sinkAgentPoolName] Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  /// [sourceAgentPoolName] Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  /// [transferManifest] Use a manifest file to limit which object are transferred. See [Storage Transfer Service manifest file format](https://cloud.google.com/storage-transfer/docs/manifest). Structure documented below.
  /// [transferOptions] Characteristics of how to treat files from datasource and sink during job. If the option `delete_objects_unique_in_sink` is true, object conditions based on objects' `last_modification_time` are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  TransferJobTransferSpec({
    this.awsS3CompatibleDataSource,
    this.awsS3DataSource,
    this.azureBlobStorageDataSource,
    this.gcsDataSink,
    this.gcsDataSource,
    this.hdfsDataSource,
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
      'awsS3CompatibleDataSource': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecAwsS3CompatibleDataSource, Map<String, dynamic>>(awsS3CompatibleDataSource, (value) => value.toMap()),
      'awsS3DataSource': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecAwsS3DataSource, Map<String, dynamic>>(awsS3DataSource, (value) => value.toMap()),
      'azureBlobStorageDataSource': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecAzureBlobStorageDataSource, Map<String, dynamic>>(azureBlobStorageDataSource, (value) => value.toMap()),
      'gcsDataSink': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecGcsDataSink, Map<String, dynamic>>(gcsDataSink, (value) => value.toMap()),
      'gcsDataSource': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecGcsDataSource, Map<String, dynamic>>(gcsDataSource, (value) => value.toMap()),
      'hdfsDataSource': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecHdfsDataSource, Map<String, dynamic>>(hdfsDataSource, (value) => value.toMap()),
      'httpDataSource': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecHttpDataSource, Map<String, dynamic>>(httpDataSource, (value) => value.toMap()),
      'objectConditions': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecObjectConditions, Map<String, dynamic>>(objectConditions, (value) => value.toMap()),
      'posixDataSink': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecPosixDataSink, Map<String, dynamic>>(posixDataSink, (value) => value.toMap()),
      'posixDataSource': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecPosixDataSource, Map<String, dynamic>>(posixDataSource, (value) => value.toMap()),
      'sinkAgentPoolName': ?sinkAgentPoolName,
      'sourceAgentPoolName': ?sourceAgentPoolName,
      'transferManifest': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecTransferManifest, Map<String, dynamic>>(transferManifest, (value) => value.toMap()),
      'transferOptions': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecTransferOptions, Map<String, dynamic>>(transferOptions, (value) => value.toMap()),
    };
  }

  factory TransferJobTransferSpec.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpec(
      awsS3CompatibleDataSource: map['awsS3CompatibleDataSource'] == null ? null : (TransferJobTransferSpecAwsS3CompatibleDataSource.fromMap((map['awsS3CompatibleDataSource']! as Map).cast<String, dynamic>())).input(),
      awsS3DataSource: map['awsS3DataSource'] == null ? null : (TransferJobTransferSpecAwsS3DataSource.fromMap((map['awsS3DataSource']! as Map).cast<String, dynamic>())).input(),
      azureBlobStorageDataSource: map['azureBlobStorageDataSource'] == null ? null : (TransferJobTransferSpecAzureBlobStorageDataSource.fromMap((map['azureBlobStorageDataSource']! as Map).cast<String, dynamic>())).input(),
      gcsDataSink: map['gcsDataSink'] == null ? null : (TransferJobTransferSpecGcsDataSink.fromMap((map['gcsDataSink']! as Map).cast<String, dynamic>())).input(),
      gcsDataSource: map['gcsDataSource'] == null ? null : (TransferJobTransferSpecGcsDataSource.fromMap((map['gcsDataSource']! as Map).cast<String, dynamic>())).input(),
      hdfsDataSource: map['hdfsDataSource'] == null ? null : (TransferJobTransferSpecHdfsDataSource.fromMap((map['hdfsDataSource']! as Map).cast<String, dynamic>())).input(),
      httpDataSource: map['httpDataSource'] == null ? null : (TransferJobTransferSpecHttpDataSource.fromMap((map['httpDataSource']! as Map).cast<String, dynamic>())).input(),
      objectConditions: map['objectConditions'] == null ? null : (TransferJobTransferSpecObjectConditions.fromMap((map['objectConditions']! as Map).cast<String, dynamic>())).input(),
      posixDataSink: map['posixDataSink'] == null ? null : (TransferJobTransferSpecPosixDataSink.fromMap((map['posixDataSink']! as Map).cast<String, dynamic>())).input(),
      posixDataSource: map['posixDataSource'] == null ? null : (TransferJobTransferSpecPosixDataSource.fromMap((map['posixDataSource']! as Map).cast<String, dynamic>())).input(),
      sinkAgentPoolName: map['sinkAgentPoolName'] == null ? null : (map['sinkAgentPoolName']! as String).input(),
      sourceAgentPoolName: map['sourceAgentPoolName'] == null ? null : (map['sourceAgentPoolName']! as String).input(),
      transferManifest: map['transferManifest'] == null ? null : (TransferJobTransferSpecTransferManifest.fromMap((map['transferManifest']! as Map).cast<String, dynamic>())).input(),
      transferOptions: map['transferOptions'] == null ? null : (TransferJobTransferSpecTransferOptions.fromMap((map['transferOptions']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

