// ignore_for_file: unused_element, unnecessary_cast


class StandardAppVersionEntrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  final String shell;

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
      shell: map['shell'] as String,
    );
  }
}

