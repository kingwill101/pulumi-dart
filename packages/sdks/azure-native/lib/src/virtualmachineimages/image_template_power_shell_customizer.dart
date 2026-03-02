// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Runs the specified PowerShell on the VM (Windows). Corresponds to Packer powershell provisioner. Exactly one of 'scriptUri' or 'inline' can be specified.
class ImageTemplatePowerShellCustomizer {
  /// Array of PowerShell commands to execute
  final pulumi.Input<List<String>>? inline;
  /// Friendly Name to provide context on what this customization step does
  final pulumi.Input<String>? name;
  /// If specified, the PowerShell script will be run with elevated privileges using the Local System user. Can only be true when the runElevated field above is set to true.
  final pulumi.Input<bool>? runAsSystem;
  /// If specified, the PowerShell script will be run with elevated privileges
  final pulumi.Input<bool>? runElevated;
  /// URI of the PowerShell script to be run for customizing. It can be a github link, SAS URI for Azure Storage, etc
  final pulumi.Input<String>? scriptUri;
  /// SHA256 checksum of the power shell script provided in the scriptUri field above
  final pulumi.Input<String>? sha256Checksum;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'PowerShell'.
  final pulumi.Input<String> type;
  /// Valid exit codes for the PowerShell script. [Default: 0]
  final pulumi.Input<List<int>>? validExitCodes;

  /// Creates a new [ImageTemplatePowerShellCustomizer].
  /// [inline] Array of PowerShell commands to execute
  /// [name] Friendly Name to provide context on what this customization step does
  /// [runAsSystem] If specified, the PowerShell script will be run with elevated privileges using the Local System user. Can only be true when the runElevated field above is set to true.
  /// [runElevated] If specified, the PowerShell script will be run with elevated privileges
  /// [scriptUri] URI of the PowerShell script to be run for customizing. It can be a github link, SAS URI for Azure Storage, etc
  /// [sha256Checksum] SHA256 checksum of the power shell script provided in the scriptUri field above
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// [validExitCodes] Valid exit codes for the PowerShell script. [Default: 0]
  ImageTemplatePowerShellCustomizer({
    this.inline,
    this.name,
    this.runAsSystem,
    this.runElevated,
    this.scriptUri,
    this.sha256Checksum,
    required this.type,
    this.validExitCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inline': ?inline,
      'name': ?name,
      'runAsSystem': ?runAsSystem,
      'runElevated': ?runElevated,
      'scriptUri': ?scriptUri,
      'sha256Checksum': ?sha256Checksum,
      'type': type,
      'validExitCodes': ?validExitCodes,
    };
  }

  factory ImageTemplatePowerShellCustomizer.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePowerShellCustomizer(
      inline: map['inline'] == null ? null : ((map['inline']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      runAsSystem: map['runAsSystem'] == null ? null : (map['runAsSystem']! as bool).input(),
      runElevated: map['runElevated'] == null ? null : (map['runElevated']! as bool).input(),
      scriptUri: map['scriptUri'] == null ? null : (map['scriptUri']! as String).input(),
      sha256Checksum: map['sha256Checksum'] == null ? null : (map['sha256Checksum']! as String).input(),
      type: (map['type'] as String).input(),
      validExitCodes: map['validExitCodes'] == null ? null : ((map['validExitCodes']! as List).cast<int>()).input(),
    );
  }
}

