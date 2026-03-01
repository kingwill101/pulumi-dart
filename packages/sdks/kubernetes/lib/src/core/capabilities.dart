// ignore_for_file: unused_element, unnecessary_cast


/// Adds and removes POSIX capabilities from running containers.
class Capabilities {
  /// Added capabilities
  final List<String>? add;
  /// Removed capabilities
  final List<String>? drop;

  /// Creates a new [Capabilities].
  /// [add] Added capabilities
  /// [drop] Removed capabilities
  Capabilities({
    this.add,
    this.drop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'drop': ?drop,
    };
  }

  factory Capabilities.fromMap(Map<String, dynamic> map) {
    return Capabilities(
      add: map['add'] == null ? null : (map['add'] as List).cast<String>(),
      drop: map['drop'] == null ? null : (map['drop'] as List).cast<String>(),
    );
  }
}

