// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DocumentAiProcessor resources.
class DocumentAiProcessorState {
  /// The display name. Must be unique.
  final pulumi.Input<String>? displayName;
  /// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  final pulumi.Input<String>? kmsKeyName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The resource name of the processor.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  final pulumi.Input<String>? type;

  /// Creates a new [DocumentAiProcessorState].
  /// [displayName] The display name. Must be unique.
  /// [kmsKeyName] The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  /// [location] The location of the resource.
  /// [name] The resource name of the processor.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  DocumentAiProcessorState({
    this.displayName,
    this.kmsKeyName,
    this.location,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'type': ?type,
    };
  }

  factory DocumentAiProcessorState.fromMap(Map<String, dynamic> map) {
    return DocumentAiProcessorState(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

