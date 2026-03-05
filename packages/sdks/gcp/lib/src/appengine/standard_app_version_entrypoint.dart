// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardAppVersionEntrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  final pulumi.Input<String> shell;

  /// Creates a new [StandardAppVersionEntrypoint].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  StandardAppVersionEntrypoint({
    required this.shell,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shell': shell,
    };
  }

  factory StandardAppVersionEntrypoint.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionEntrypoint(
      shell: pulumi.Input.fromValue(map['shell'] as String),
    );
  }
}

