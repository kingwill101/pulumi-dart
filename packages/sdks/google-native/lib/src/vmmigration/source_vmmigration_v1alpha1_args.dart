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
    pulumi.Output<AwsSourceDetailsVmmigrationV1alpha1>? aws,
    pulumi.Output<AzureSourceDetailsVmmigrationV1alpha1>? azure,
    pulumi.Output<String>? description,
    pulumi.Output<EncryptionVmmigrationV1alpha1>? encryption,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<String> sourceId,
    pulumi.Output<VmwareSourceDetailsVmmigrationV1alpha1>? vmware,
  }) :
      aws = pulumi.Input.asOptionalInput<AwsSourceDetailsVmmigrationV1alpha1>(aws),
      azure = pulumi.Input.asOptionalInput<AzureSourceDetailsVmmigrationV1alpha1>(azure),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryption = pulumi.Input.asOptionalInput<EncryptionVmmigrationV1alpha1>(encryption),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sourceId = pulumi.Input.asInput<String>(sourceId),
      vmware = pulumi.Input.asOptionalInput<VmwareSourceDetailsVmmigrationV1alpha1>(vmware);

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
      aws: map['aws'] == null ? null : pulumi.Output.create<AwsSourceDetailsVmmigrationV1alpha1>(AwsSourceDetailsVmmigrationV1alpha1.fromMap((map['aws'] as Map).cast<String, dynamic>())),
      azure: map['azure'] == null ? null : pulumi.Output.create<AzureSourceDetailsVmmigrationV1alpha1>(AzureSourceDetailsVmmigrationV1alpha1.fromMap((map['azure'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<EncryptionVmmigrationV1alpha1>(EncryptionVmmigrationV1alpha1.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
      vmware: map['vmware'] == null ? null : pulumi.Output.create<VmwareSourceDetailsVmmigrationV1alpha1>(VmwareSourceDetailsVmmigrationV1alpha1.fromMap((map['vmware'] as Map).cast<String, dynamic>())),
    );
  }
}

