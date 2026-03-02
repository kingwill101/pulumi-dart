// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about files that caused a compliance check to fail. display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'.
class NonCompliantFileResponse {
  /// Command to display the non-compliant files.
  final pulumi.Input<String> displayCommand;
  /// Empty if `display_command` is set.
  final pulumi.Input<String> path;
  /// Explains why a file is non compliant for a CIS check.
  final pulumi.Input<String> reason;

  /// Creates a new [NonCompliantFileResponse].
  /// [displayCommand] Command to display the non-compliant files.
  /// [path] Empty if `display_command` is set.
  /// [reason] Explains why a file is non compliant for a CIS check.
  NonCompliantFileResponse({
    required this.displayCommand,
    required this.path,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayCommand': displayCommand,
      'path': path,
      'reason': reason,
    };
  }

  factory NonCompliantFileResponse.fromMap(Map<String, dynamic> map) {
    return NonCompliantFileResponse(
      displayCommand: (map['displayCommand'] as String).input(),
      path: (map['path'] as String).input(),
      reason: (map['reason'] as String).input(),
    );
  }
}

