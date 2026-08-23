// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExportLocal {
  /// Output path.
  final pulumi.Input<String> dest;

  /// Creates a new [ExportLocal].
  /// [dest] Output path.
  const ExportLocal({
    required this.dest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dest': dest,
    };
  }

  factory ExportLocal.fromMap(Map<String, dynamic> map) {
    return ExportLocal(
      dest: pulumi.Input.fromValue(map['dest'] as String),
    );
  }
}
