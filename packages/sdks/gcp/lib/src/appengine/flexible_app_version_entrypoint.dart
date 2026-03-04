// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionEntrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  final pulumi.Input<String> shell;

  /// Creates a new [FlexibleAppVersionEntrypoint].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  FlexibleAppVersionEntrypoint({required this.shell});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'shell': shell};
  }

  factory FlexibleAppVersionEntrypoint.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionEntrypoint(
      shell: pulumi.Input.fromValue(map['shell'] as String),
    );
  }
}
