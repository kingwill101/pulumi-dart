// ignore_for_file: unused_element, unnecessary_cast


/// Reboots a VM and waits for it to come back online (Windows). Corresponds to Packer windows-restart provisioner
class ImageTemplateRestartCustomizer {
  /// Friendly Name to provide context on what this customization step does
  final String? name;
  /// Command to check if restart succeeded [Default: '']
  final String? restartCheckCommand;
  /// Command to execute the restart [Default: 'shutdown /r /f /t 0 /c "packer restart"']
  final String? restartCommand;
  /// Restart timeout specified as a string of magnitude and unit, e.g. '5m' (5 minutes) or '2h' (2 hours) [Default: '5m']
  final String? restartTimeout;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'WindowsRestart'.
  final String type;

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
      name: map['name'] == null ? null : map['name'] as String,
      restartCheckCommand: map['restartCheckCommand'] == null ? null : map['restartCheckCommand'] as String,
      restartCommand: map['restartCommand'] == null ? null : map['restartCommand'] as String,
      restartTimeout: map['restartTimeout'] == null ? null : map['restartTimeout'] as String,
      type: map['type'] as String,
    );
  }
}

