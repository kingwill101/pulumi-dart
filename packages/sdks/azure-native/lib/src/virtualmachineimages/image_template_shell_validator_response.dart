// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Runs the specified shell script during the validation phase (Linux). Corresponds to Packer shell provisioner. Exactly one of 'scriptUri' or 'inline' can be specified.
class ImageTemplateShellValidatorResponse {
  /// Array of shell commands to execute
  final pulumi.Input<List<String>>? inline;
  /// Friendly Name to provide context on what this validation step does
  final pulumi.Input<String>? name;
  /// URI of the shell script to be run for validation. It can be a github link, Azure Storage URI, etc
  final pulumi.Input<String>? scriptUri;
  /// SHA256 checksum of the shell script provided in the scriptUri field
  final pulumi.Input<String>? sha256Checksum;
  /// The type of validation you want to use on the Image. For example, "Shell" can be shell validation
  /// Expected value is 'Shell'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateShellValidatorResponse].
  /// [inline] Array of shell commands to execute
  /// [name] Friendly Name to provide context on what this validation step does
  /// [scriptUri] URI of the shell script to be run for validation. It can be a github link, Azure Storage URI, etc
  /// [sha256Checksum] SHA256 checksum of the shell script provided in the scriptUri field
  /// [type] The type of validation you want to use on the Image. For example, "Shell" can be shell validation
  ImageTemplateShellValidatorResponse({
    this.inline,
    this.name,
    this.scriptUri,
    this.sha256Checksum,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inline': ?inline,
      'name': ?name,
      'scriptUri': ?scriptUri,
      'sha256Checksum': ?sha256Checksum,
      'type': type,
    };
  }

  factory ImageTemplateShellValidatorResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateShellValidatorResponse(
      inline: map['inline'] == null ? null : ((map['inline'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      scriptUri: map['scriptUri'] == null ? null : (map['scriptUri'] as String).input(),
      sha256Checksum: map['sha256Checksum'] == null ? null : (map['sha256Checksum'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

