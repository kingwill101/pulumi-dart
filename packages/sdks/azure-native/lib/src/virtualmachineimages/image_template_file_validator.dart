// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploads files required for validation to VMs (Linux, Windows). Corresponds to Packer file provisioner
class ImageTemplateFileValidator {
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

  /// Creates a new [ImageTemplateFileValidator].
  /// [destination] The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM
  /// [name] Friendly Name to provide context on what this validation step does
  /// [sha256Checksum] SHA256 checksum of the file provided in the sourceUri field above
  /// [sourceUri] The URI of the file to be uploaded to the VM for validation. It can be a github link, Azure Storage URI (authorized or SAS), etc
  /// [type] The type of validation you want to use on the Image. For example, "Shell" can be shell validation
  ImageTemplateFileValidator({
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

  factory ImageTemplateFileValidator.fromMap(Map<String, dynamic> map) {
    return ImageTemplateFileValidator(
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sha256Checksum: (() {
        final guardedValue = map['sha256Checksum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceUri: (() {
        final guardedValue = map['sourceUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
