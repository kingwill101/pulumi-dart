// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemBinarySandbox {
  /// Sets the mode for the sandbox environment of the binary filesystem.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesFilesystemBinarySandbox].
  /// [mode] Sets the mode for the sandbox environment of the binary filesystem.
  const DomainDevicesFilesystemBinarySandbox({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesFilesystemBinarySandbox.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinarySandbox(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

