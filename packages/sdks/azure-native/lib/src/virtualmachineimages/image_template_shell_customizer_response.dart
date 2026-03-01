// ignore_for_file: unused_element, unnecessary_cast


/// Runs a shell script during the customization phase (Linux). Corresponds to Packer shell provisioner. Exactly one of 'scriptUri' or 'inline' can be specified.
class ImageTemplateShellCustomizerResponse {
  /// Array of shell commands to execute
  final List<String>? inline;
  /// Friendly Name to provide context on what this customization step does
  final String? name;
  /// URI of the shell script to be run for customizing. It can be a github link, SAS URI for Azure Storage, etc
  final String? scriptUri;
  /// SHA256 checksum of the shell script provided in the scriptUri field
  final String? sha256Checksum;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'Shell'.
  final String type;

  /// Creates a new [ImageTemplateShellCustomizerResponse].
  /// [inline] Array of shell commands to execute
  /// [name] Friendly Name to provide context on what this customization step does
  /// [scriptUri] URI of the shell script to be run for customizing. It can be a github link, SAS URI for Azure Storage, etc
  /// [sha256Checksum] SHA256 checksum of the shell script provided in the scriptUri field
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  ImageTemplateShellCustomizerResponse({
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
      inline: map['inline'] == null ? null : (map['inline'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      scriptUri: map['scriptUri'] == null ? null : map['scriptUri'] as String,
      sha256Checksum: map['sha256Checksum'] == null ? null : map['sha256Checksum'] as String,
      type: map['type'] as String,
    );
  }
}

