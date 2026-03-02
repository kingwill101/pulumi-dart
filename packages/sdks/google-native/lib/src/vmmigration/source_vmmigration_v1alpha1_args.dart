// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_details_vmmigration_v1alpha1.dart';
import 'azure_source_details_vmmigration_v1alpha1.dart';
import 'encryption_vmmigration_v1alpha1.dart';
import 'vmware_source_details_vmmigration_v1alpha1.dart';

/// {@template pulumi_vmmigration_v1alpha1_source_vmmigration_v1alpha1_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_source_vmmigration_v1alpha1_args_doc}
class SourceVmmigrationV1alpha1Args {
  /// AWS type source details.
  final pulumi.Input<AwsSourceDetailsVmmigrationV1alpha1>? aws;
  /// Azure type source details.
  final pulumi.Input<AzureSourceDetailsVmmigrationV1alpha1>? azure;
  /// User-provided description of the source.
  final pulumi.Input<String>? description;
  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final pulumi.Input<EncryptionVmmigrationV1alpha1>? encryption;
  /// The labels of the source.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. The source identifier.
  final pulumi.Input<String> sourceId;
  /// Vmware type source details.
  final pulumi.Input<VmwareSourceDetailsVmmigrationV1alpha1>? vmware;

  /// Creates a new [SourceVmmigrationV1alpha1Args].
  /// [aws] AWS type source details.
  /// [azure] Azure type source details.
  /// [description] User-provided description of the source.
  /// [encryption] Optional. Immutable. The encryption details of the source data stored by the service.
  /// [labels] The labels of the source.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required. The source identifier.
  /// [vmware] Vmware type source details.
  SourceVmmigrationV1alpha1Args({
    this.aws,
    this.azure,
    this.description,
    this.encryption,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    required this.sourceId,
    this.vmware,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aws': ?pulumi.Input.mapOptionalInputValue<AwsSourceDetailsVmmigrationV1alpha1, Map<String, dynamic>>(aws, (value) => value.toMap()),
      'azure': ?pulumi.Input.mapOptionalInputValue<AzureSourceDetailsVmmigrationV1alpha1, Map<String, dynamic>>(azure, (value) => value.toMap()),
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionVmmigrationV1alpha1, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
      'vmware': ?pulumi.Input.mapOptionalInputValue<VmwareSourceDetailsVmmigrationV1alpha1, Map<String, dynamic>>(vmware, (value) => value.toMap()),
    };
  }

  factory SourceVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return SourceVmmigrationV1alpha1Args(
      aws: map['aws'] == null ? null : (AwsSourceDetailsVmmigrationV1alpha1.fromMap((map['aws'] as Map).cast<String, dynamic>())).input(),
      azure: map['azure'] == null ? null : (AzureSourceDetailsVmmigrationV1alpha1.fromMap((map['azure'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryption: map['encryption'] == null ? null : (EncryptionVmmigrationV1alpha1.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      vmware: map['vmware'] == null ? null : (VmwareSourceDetailsVmmigrationV1alpha1.fromMap((map['vmware'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

