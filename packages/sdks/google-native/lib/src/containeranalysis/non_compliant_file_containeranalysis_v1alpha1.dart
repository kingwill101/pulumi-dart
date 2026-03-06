// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about files that caused a compliance check to fail.
class NonCompliantFileContaineranalysisV1alpha1 {
  /// Command to display the non-compliant files.
  final pulumi.Input<String>? displayCommand;
  /// display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'. Empty if `display_command` is set.
  final pulumi.Input<String>? path;
  /// Explains why a file is non compliant for a CIS check.
  final pulumi.Input<String>? reason;

  /// Creates a new [NonCompliantFileContaineranalysisV1alpha1].
  /// [displayCommand] Command to display the non-compliant files.
  /// [path] display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'. Empty if `display_command` is set.
  /// [reason] Explains why a file is non compliant for a CIS check.
  const NonCompliantFileContaineranalysisV1alpha1({
    this.displayCommand,
    this.path,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayCommand': ?displayCommand,
      'path': ?path,
      'reason': ?reason,
    };
  }

  factory NonCompliantFileContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return NonCompliantFileContaineranalysisV1alpha1(
      displayCommand: (() { final guardedValue = map['displayCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

