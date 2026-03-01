// ignore_for_file: unused_element, unnecessary_cast


class ExportLocal {
  /// Output path.
  final String dest;

  /// Creates a new [ExportLocal].
  /// [dest] Output path.
  ExportLocal({
    required this.dest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dest': dest,
    };
  }

  factory ExportLocal.fromMap(Map<String, dynamic> map) {
    return ExportLocal(
      dest: map['dest'] as String,
    );
  }
}

