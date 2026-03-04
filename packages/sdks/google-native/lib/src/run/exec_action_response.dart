// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Not supported by Cloud Run. ExecAction describes a "run in container" action.
class ExecActionResponse {
  /// Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  final pulumi.Input<List<String>> command;

  /// Creates a new [ExecActionResponse].
  /// [command] Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  ExecActionResponse({required this.command});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'command': command};
  }

  factory ExecActionResponse.fromMap(Map<String, dynamic> map) {
    return ExecActionResponse(
      command: pulumi.Input.fromValue((map['command'] as List).cast<String>()),
    );
  }
}
