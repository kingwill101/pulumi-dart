// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploads files to VMs (Linux, Windows). Corresponds to Packer file provisioner
class ImageTemplateFileCustomizer {
  /// The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM
  final pulumi.Input<String>? destination;
  /// Friendly Name to provide context on what this customization step does
  final pulumi.Input<String>? name;
  /// SHA256 checksum of the file provided in the sourceUri field above
  final pulumi.Input<String>? sha256Checksum;
  /// The URI of the file to be uploaded for customizing the VM. It can be a github link, SAS URI for Azure Storage, etc
  final pulumi.Input<String>? sourceUri;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'File'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateFileCustomizer].
  /// [destination] The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM
  /// [name] Friendly Name to provide context on what this customization step does
  /// [sha256Checksum] SHA256 checksum of the file provided in the sourceUri field above
  /// [sourceUri] The URI of the file to be uploaded for customizing the VM. It can be a github link, SAS URI for Azure Storage, etc
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  ImageTemplateFileCustomizer({
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

  factory ImageTemplateFileCustomizer.fromMap(Map<String, dynamic> map) {
    return ImageTemplateFileCustomizer(
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sha256Checksum: map['sha256Checksum'] == null ? null : (map['sha256Checksum'] as String).input(),
      sourceUri: map['sourceUri'] == null ? null : (map['sourceUri'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

