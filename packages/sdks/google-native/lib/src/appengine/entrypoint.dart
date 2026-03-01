// ignore_for_file: unused_element, unnecessary_cast


/// The entrypoint for the application.
class Entrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  final String? shell;

  /// Creates a new [Entrypoint].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  Entrypoint({
    this.shell,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shell': ?shell,
    };
  }

  factory Entrypoint.fromMap(Map<String, dynamic> map) {
    return Entrypoint(
      shell: map['shell'] == null ? null : map['shell'] as String,
    );
  }
}

