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
  AutoHealCustomAction({
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
      exe: map['exe'] == null ? null : (map['exe'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as String).input(),
    );
  }
}

