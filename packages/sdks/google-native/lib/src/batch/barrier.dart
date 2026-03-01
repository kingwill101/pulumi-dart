// ignore_for_file: unused_element, unnecessary_cast


/// Barrier runnable blocks until all tasks in a taskgroup reach it.
class Barrier {
  /// Barriers are identified by their index in runnable list. Names are not required, but if present should be an identifier.
  final String? name;

  /// Creates a new [Barrier].
  /// [name] Barriers are identified by their index in runnable list. Names are not required, but if present should be an identifier.
  Barrier({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory Barrier.fromMap(Map<String, dynamic> map) {
    return Barrier(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

