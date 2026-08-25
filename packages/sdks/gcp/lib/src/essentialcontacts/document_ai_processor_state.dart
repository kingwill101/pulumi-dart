// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DocumentAiProcessor resources.
class DocumentAiProcessorState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name. Must be unique.
  final pulumi.Input<String?>? displayName;
  /// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  final pulumi.Input<String?>? kmsKeyName;
  /// The location of the resource.
  final pulumi.Input<String?>? location;
  /// The resource name of the processor.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  final pulumi.Input<String?>? type;

  /// Creates a new [DocumentAiProcessorState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name. Must be unique.
  /// [kmsKeyName] The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  /// [location] The location of the resource.
  /// [name] The resource name of the processor.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  const DocumentAiProcessorState({
    this.deletionPolicy,
    this.displayName,
    this.kmsKeyName,
    this.location,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
