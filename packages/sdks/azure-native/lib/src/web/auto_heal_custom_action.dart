// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom action to be executed
/// when an auto heal rule is triggered.
class AutoHealCustomAction {
  /// Executable to be run.
  final pulumi.Input<String>? exe;
  /// Parameters for the executable.
  final pulumi.Input<String>? parameters;

  /// Creates a new [AutoHealCustomAction].
  /// [exe] Executable to be run.
  /// [parameters] Parameters for the executable.
  const AutoHealCustomAction({
    this.exe,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exe': ?exe,
      'parameters': ?parameters,
    };
  }

  factory AutoHealCustomAction.fromMap(Map<String, dynamic> map) {
    return AutoHealCustomAction(
      exe: (() { final guardedValue = map['exe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

