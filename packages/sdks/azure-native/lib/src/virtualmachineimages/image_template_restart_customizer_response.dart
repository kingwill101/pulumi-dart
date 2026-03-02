// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reboots a VM and waits for it to come back online (Windows). Corresponds to Packer windows-restart provisioner
class ImageTemplateRestartCustomizerResponse {
  /// Friendly Name to provide context on what this customization step does
  final pulumi.Input<String>? name;
  /// Command to check if restart succeeded [Default: '']
  final pulumi.Input<String>? restartCheckCommand;
  /// Command to execute the restart [Default: 'shutdown /r /f /t 0 /c "packer restart"']
  final pulumi.Input<String>? restartCommand;
  /// Restart timeout specified as a string of magnitude and unit, e.g. '5m' (5 minutes) or '2h' (2 hours) [Default: '5m']
  final pulumi.Input<String>? restartTimeout;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'WindowsRestart'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateRestartCustomizerResponse].
  /// [name] Friendly Name to provide context on what this customization step does
  /// [restartCheckCommand] Command to check if restart succeeded [Default: '']
  /// [restartCommand] Command to execute the restart [Default: 'shutdown /r /f /t 0 /c "packer restart"']
  /// [restartTimeout] Restart timeout specified as a string of magnitude and unit, e.g. '5m' (5 minutes) or '2h' (2 hours) [Default: '5m']
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  ImageTemplateRestartCustomizerResponse({
    this.name,
    this.restartCheckCommand,
    this.restartCommand,
    this.restartTimeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'restartCheckCommand': ?restartCheckCommand,
      'restartCommand': ?restartCommand,
      'restartTimeout': ?restartTimeout,
      'type': type,
    };
  }

  factory ImageTemplateRestartCustomizerResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateRestartCustomizerResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      restartCheckCommand: map['restartCheckCommand'] == null ? null : (map['restartCheckCommand']! as String).input(),
      restartCommand: map['restartCommand'] == null ? null : (map['restartCommand']! as String).input(),
      restartTimeout: map['restartTimeout'] == null ? null : (map['restartTimeout']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

