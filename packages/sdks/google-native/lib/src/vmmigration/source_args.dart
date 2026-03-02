// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_details.dart';
import 'azure_source_details.dart';
import 'encryption.dart';
import 'vmware_source_details.dart';

/// {@template pulumi_vmmigration_v1_source_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_source_args_doc}
class SourceArgs {
  /// AWS type source details.
  final pulumi.Input<AwsSourceDetails>? aws;
  /// Azure type source details.
  final pulumi.Input<AzureSourceDetails>? azure;
  /// User-provided description of the source.
  final pulumi.Input<String>? description;
  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final pulumi.Input<Encryption>? encryption;
  /// The labels of the source.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. The source identifier.
  final pulumi.Input<String> sourceId;
  /// Vmware type source details.
  final pulumi.Input<VmwareSourceDetails>? vmware;

  /// Creates a new [SourceArgs].
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
  SourceArgs({
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
      'aws': ?pulumi.Input.mapOptionalInputValue<AwsSourceDetails, Map<String, dynamic>>(aws, (value) => value.toMap()),
      'azure': ?pulumi.Input.mapOptionalInputValue<AzureSourceDetails, Map<String, dynamic>>(azure, (value) => value.toMap()),
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
      'vmware': ?pulumi.Input.mapOptionalInputValue<VmwareSourceDetails, Map<String, dynamic>>(vmware, (value) => value.toMap()),
    };
  }

  factory SourceArgs.fromMap(Map<String, dynamic> map) {
    return SourceArgs(
      aws: map['aws'] == null ? null : (AwsSourceDetails.fromMap((map['aws'] as Map).cast<String, dynamic>())).input(),
      azure: map['azure'] == null ? null : (AzureSourceDetails.fromMap((map['azure'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      vmware: map['vmware'] == null ? null : (VmwareSourceDetails.fromMap((map['vmware'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

