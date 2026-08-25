// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_document_ai_processor_document_ai_processor_args_doc}
/// The set of arguments for DocumentAiProcessor.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_document_ai_processor_document_ai_processor_args_doc}
class DocumentAiProcessorArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name. Must be unique.
  final pulumi.Input<String> displayName;
  /// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  final pulumi.Input<String?>? kmsKeyName;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  final pulumi.Input<String> type;

  /// Creates a new [DocumentAiProcessorArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name. Must be unique.
  /// [kmsKeyName] The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  /// [location] The location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  const DocumentAiProcessorArgs({
    this.deletionPolicy,
    required this.displayName,
    this.kmsKeyName,
    required this.location,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'kmsKeyName': ?kmsKeyName,
      'location': location,
      'project': ?project,
      'type': type,
    };
  }

  factory DocumentAiProcessorArgs.fromMap(Map<String, dynamic> map) {
    return DocumentAiProcessorArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
