// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The entrypoint for the application.
class EntrypointResponse {
  /// The format should be a shell command that can be fed to bash -c.
  final pulumi.Input<String> shell;

  /// Creates a new [EntrypointResponse].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  const EntrypointResponse({
    required this.shell,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shell': shell,
    };
  }

  factory EntrypointResponse.fromMap(Map<String, dynamic> map) {
    return EntrypointResponse(
      shell: pulumi.Input.fromValue(map['shell'] as String),
    );
  }
}
