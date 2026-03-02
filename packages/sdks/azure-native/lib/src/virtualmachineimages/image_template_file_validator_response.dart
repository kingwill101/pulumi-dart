// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploads files required for validation to VMs (Linux, Windows). Corresponds to Packer file provisioner
class ImageTemplateFileValidatorResponse {
  /// The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM
  final pulumi.Input<String>? destination;
  /// Friendly Name to provide context on what this validation step does
  final pulumi.Input<String>? name;
  /// SHA256 checksum of the file provided in the sourceUri field above
  final pulumi.Input<String>? sha256Checksum;
  /// The URI of the file to be uploaded to the VM for validation. It can be a github link, Azure Storage URI (authorized or SAS), etc
  final pulumi.Input<String>? sourceUri;
  /// The type of validation you want to use on the Image. For example, "Shell" can be shell validation
  /// Expected value is 'File'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateFileValidatorResponse].
  /// [destination] The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM
  /// [name] Friendly Name to provide context on what this validation step does
  /// [sha256Checksum] SHA256 checksum of the file provided in the sourceUri field above
  /// [sourceUri] The URI of the file to be uploaded to the VM for validation. It can be a github link, Azure Storage URI (authorized or SAS), etc
  /// [type] The type of validation you want to use on the Image. For example, "Shell" can be shell validation
  ImageTemplateFileValidatorResponse({
    this.destination,
    this.name,
    this.sha256Checksum,
    this.sourceUri,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'name': ?name,
      'sha256Checksum': ?sha256Checksum,
      'sourceUri': ?sourceUri,
      'type': type,
    };
  }

  factory ImageTemplateFileValidatorResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateFileValidatorResponse(
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sha256Checksum: map['sha256Checksum'] == null ? null : (map['sha256Checksum']! as String).input(),
      sourceUri: map['sourceUri'] == null ? null : (map['sourceUri']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

