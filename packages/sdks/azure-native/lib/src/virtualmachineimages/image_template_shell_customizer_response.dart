// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Runs a shell script during the customization phase (Linux). Corresponds to Packer shell provisioner. Exactly one of 'scriptUri' or 'inline' can be specified.
class ImageTemplateShellCustomizerResponse {
  /// Array of shell commands to execute
  final pulumi.Input<List<String>>? inline;
  /// Friendly Name to provide context on what this customization step does
  final pulumi.Input<String>? name;
  /// URI of the shell script to be run for customizing. It can be a github link, SAS URI for Azure Storage, etc
  final pulumi.Input<String>? scriptUri;
  /// SHA256 checksum of the shell script provided in the scriptUri field
  final pulumi.Input<String>? sha256Checksum;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'Shell'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateShellCustomizerResponse].
  /// [inline] Array of shell commands to execute
  /// [name] Friendly Name to provide context on what this customization step does
  /// [scriptUri] URI of the shell script to be run for customizing. It can be a github link, SAS URI for Azure Storage, etc
  /// [sha256Checksum] SHA256 checksum of the shell script provided in the scriptUri field
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  const ImageTemplateShellCustomizerResponse({
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

  factory ImageTemplateShellCustomizerResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateShellCustomizerResponse(
      inline: (() { final guardedValue = map['inline']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptUri: (() { final guardedValue = map['scriptUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256Checksum: (() { final guardedValue = map['sha256Checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
