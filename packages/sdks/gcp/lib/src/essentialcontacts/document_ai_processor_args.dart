// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_document_ai_processor_document_ai_processor_args_doc}
/// The set of arguments for DocumentAiProcessor.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_document_ai_processor_document_ai_processor_args_doc}
class DocumentAiProcessorArgs {
  /// The display name. Must be unique.
  final pulumi.Input<String> displayName;
  /// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  final pulumi.Input<String>? kmsKeyName;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  final pulumi.Input<String> type;

  /// Creates a new [DocumentAiProcessorArgs].
  /// [displayName] The display name. Must be unique.
  /// [kmsKeyName] The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  /// [location] The location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  DocumentAiProcessorArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? kmsKeyName,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> type,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'kmsKeyName': ?kmsKeyName,
      'location': location,
      'project': ?project,
      'type': type,
    };
  }

  factory DocumentAiProcessorArgs.fromMap(Map<String, dynamic> map) {
    return DocumentAiProcessorArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

