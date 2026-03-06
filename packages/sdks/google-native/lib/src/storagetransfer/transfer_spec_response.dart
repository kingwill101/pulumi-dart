// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_s3_compatible_data_response.dart';
import 'aws_s3_data_response.dart';
import 'azure_blob_storage_data_response.dart';
import 'gcs_data_response.dart';
import 'http_data_response.dart';
import 'object_conditions_response.dart';
import 'posix_filesystem_response.dart';
import 'transfer_manifest_response.dart';
import 'transfer_options_response.dart';

/// Configuration for running a transfer.
class TransferSpecResponse {
  /// An AWS S3 compatible data source.
  final pulumi.Input<AwsS3CompatibleDataResponse> awsS3CompatibleDataSource;
  /// An AWS S3 data source.
  final pulumi.Input<AwsS3DataResponse> awsS3DataSource;
  /// An Azure Blob Storage data source.
  final pulumi.Input<AzureBlobStorageDataResponse> azureBlobStorageDataSource;
  /// A Cloud Storage data sink.
  final pulumi.Input<GcsDataResponse> gcsDataSink;
  /// A Cloud Storage data source.
  final pulumi.Input<GcsDataResponse> gcsDataSource;
  /// For transfers between file systems, specifies a Cloud Storage bucket to be used as an intermediate location through which to transfer data. See [Transfer data between file systems](https://cloud.google.com/storage-transfer/docs/file-to-file) for more information.
  final pulumi.Input<GcsDataResponse> gcsIntermediateDataLocation;
  /// An HTTP URL data source.
  final pulumi.Input<HttpDataResponse> httpDataSource;
  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' "last modification time" do not exclude objects in a data sink.
  final pulumi.Input<ObjectConditionsResponse> objectConditions;
  /// A POSIX Filesystem data sink.
  final pulumi.Input<PosixFilesystemResponse> posixDataSink;
  /// A POSIX Filesystem data source.
  final pulumi.Input<PosixFilesystemResponse> posixDataSource;
  /// Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  final pulumi.Input<String> sinkAgentPoolName;
  /// Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  final pulumi.Input<String> sourceAgentPoolName;
  /// A manifest file provides a list of objects to be transferred from the data source. This field points to the location of the manifest file. Otherwise, the entire source bucket is used. ObjectConditions still apply.
  final pulumi.Input<TransferManifestResponse> transferManifest;
  /// If the option delete_objects_unique_in_sink is `true` and time-based object conditions such as 'last modification time' are specified, the request fails with an INVALID_ARGUMENT error.
  final pulumi.Input<TransferOptionsResponse> transferOptions;

  /// Creates a new [TransferSpecResponse].
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
  const TransferSpecResponse({
    required this.awsS3CompatibleDataSource,
    required this.awsS3DataSource,
    required this.azureBlobStorageDataSource,
    required this.gcsDataSink,
    required this.gcsDataSource,
    required this.gcsIntermediateDataLocation,
    required this.httpDataSource,
    required this.objectConditions,
    required this.posixDataSink,
    required this.posixDataSource,
    required this.sinkAgentPoolName,
    required this.sourceAgentPoolName,
    required this.transferManifest,
    required this.transferOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsS3CompatibleDataSource': pulumi.Input.mapInputValue<AwsS3CompatibleDataResponse, Map<String, dynamic>>(awsS3CompatibleDataSource, (value) => value.toMap()),
      'awsS3DataSource': pulumi.Input.mapInputValue<AwsS3DataResponse, Map<String, dynamic>>(awsS3DataSource, (value) => value.toMap()),
      'azureBlobStorageDataSource': pulumi.Input.mapInputValue<AzureBlobStorageDataResponse, Map<String, dynamic>>(azureBlobStorageDataSource, (value) => value.toMap()),
      'gcsDataSink': pulumi.Input.mapInputValue<GcsDataResponse, Map<String, dynamic>>(gcsDataSink, (value) => value.toMap()),
      'gcsDataSource': pulumi.Input.mapInputValue<GcsDataResponse, Map<String, dynamic>>(gcsDataSource, (value) => value.toMap()),
      'gcsIntermediateDataLocation': pulumi.Input.mapInputValue<GcsDataResponse, Map<String, dynamic>>(gcsIntermediateDataLocation, (value) => value.toMap()),
      'httpDataSource': pulumi.Input.mapInputValue<HttpDataResponse, Map<String, dynamic>>(httpDataSource, (value) => value.toMap()),
      'objectConditions': pulumi.Input.mapInputValue<ObjectConditionsResponse, Map<String, dynamic>>(objectConditions, (value) => value.toMap()),
      'posixDataSink': pulumi.Input.mapInputValue<PosixFilesystemResponse, Map<String, dynamic>>(posixDataSink, (value) => value.toMap()),
      'posixDataSource': pulumi.Input.mapInputValue<PosixFilesystemResponse, Map<String, dynamic>>(posixDataSource, (value) => value.toMap()),
      'sinkAgentPoolName': sinkAgentPoolName,
      'sourceAgentPoolName': sourceAgentPoolName,
      'transferManifest': pulumi.Input.mapInputValue<TransferManifestResponse, Map<String, dynamic>>(transferManifest, (value) => value.toMap()),
      'transferOptions': pulumi.Input.mapInputValue<TransferOptionsResponse, Map<String, dynamic>>(transferOptions, (value) => value.toMap()),
    };
  }

  factory TransferSpecResponse.fromMap(Map<String, dynamic> map) {
    return TransferSpecResponse(
      awsS3CompatibleDataSource: pulumi.Input.fromValue(AwsS3CompatibleDataResponse.fromMap((map['awsS3CompatibleDataSource']! as Map).cast<String, dynamic>())),
      awsS3DataSource: pulumi.Input.fromValue(AwsS3DataResponse.fromMap((map['awsS3DataSource']! as Map).cast<String, dynamic>())),
      azureBlobStorageDataSource: pulumi.Input.fromValue(AzureBlobStorageDataResponse.fromMap((map['azureBlobStorageDataSource']! as Map).cast<String, dynamic>())),
      gcsDataSink: pulumi.Input.fromValue(GcsDataResponse.fromMap((map['gcsDataSink']! as Map).cast<String, dynamic>())),
      gcsDataSource: pulumi.Input.fromValue(GcsDataResponse.fromMap((map['gcsDataSource']! as Map).cast<String, dynamic>())),
      gcsIntermediateDataLocation: pulumi.Input.fromValue(GcsDataResponse.fromMap((map['gcsIntermediateDataLocation']! as Map).cast<String, dynamic>())),
      httpDataSource: pulumi.Input.fromValue(HttpDataResponse.fromMap((map['httpDataSource']! as Map).cast<String, dynamic>())),
      objectConditions: pulumi.Input.fromValue(ObjectConditionsResponse.fromMap((map['objectConditions']! as Map).cast<String, dynamic>())),
      posixDataSink: pulumi.Input.fromValue(PosixFilesystemResponse.fromMap((map['posixDataSink']! as Map).cast<String, dynamic>())),
      posixDataSource: pulumi.Input.fromValue(PosixFilesystemResponse.fromMap((map['posixDataSource']! as Map).cast<String, dynamic>())),
      sinkAgentPoolName: pulumi.Input.fromValue(map['sinkAgentPoolName'] as String),
      sourceAgentPoolName: pulumi.Input.fromValue(map['sourceAgentPoolName'] as String),
      transferManifest: pulumi.Input.fromValue(TransferManifestResponse.fromMap((map['transferManifest']! as Map).cast<String, dynamic>())),
      transferOptions: pulumi.Input.fromValue(TransferOptionsResponse.fromMap((map['transferOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

