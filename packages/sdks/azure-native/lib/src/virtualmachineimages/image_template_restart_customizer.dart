// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reboots a VM and waits for it to come back online (Windows). Corresponds to Packer windows-restart provisioner
class ImageTemplateRestartCustomizer {
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

  /// Creates a new [ImageTemplateRestartCustomizer].
  /// [name] Friendly Name to provide context on what this customization step does
  /// [restartCheckCommand] Command to check if restart succeeded [Default: '']
  /// [restartCommand] Command to execute the restart [Default: 'shutdown /r /f /t 0 /c "packer restart"']
  /// [restartTimeout] Restart timeout specified as a string of magnitude and unit, e.g. '5m' (5 minutes) or '2h' (2 hours) [Default: '5m']
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  ImageTemplateRestartCustomizer({
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

  factory ImageTemplateRestartCustomizer.fromMap(Map<String, dynamic> map) {
    return ImageTemplateRestartCustomizer(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartCheckCommand: (() { final guardedValue = map['restartCheckCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartCommand: (() { final guardedValue = map['restartCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartTimeout: (() { final guardedValue = map['restartTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

