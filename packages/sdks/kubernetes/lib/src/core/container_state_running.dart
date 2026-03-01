// ignore_for_file: unused_element, unnecessary_cast


/// ContainerStateRunning is a running state of a container.
class ContainerStateRunning {
  /// Time at which the container was last (re-)started
  final String? startedAt;

  /// Creates a new [ContainerStateRunning].
  /// [startedAt] Time at which the container was last (re-)started
  ContainerStateRunning({
    this.startedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startedAt': ?startedAt,
    };
  }

  factory ContainerStateRunning.fromMap(Map<String, dynamic> map) {
    return ContainerStateRunning(
      startedAt: map['startedAt'] == null ? null : map['startedAt'] as String,
    );
  }
}

