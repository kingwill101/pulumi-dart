// ignore_for_file: unused_element, unnecessary_cast


/// The entrypoint for the application.
class EntrypointResponseAppengineV1beta {
  /// The format should be a shell command that can be fed to bash -c.
  final String shell;

  /// Creates a new [EntrypointResponseAppengineV1beta].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  EntrypointResponseAppengineV1beta({
    required this.shell,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shell': shell,
    };
  }

  factory EntrypointResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return EntrypointResponseAppengineV1beta(
      shell: map['shell'] as String,
    );
  }
}

