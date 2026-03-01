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
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? type,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

