// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExportTar {
  /// Output path.
  final pulumi.Input<String> dest;

  /// Creates a new [ExportTar].
  /// [dest] Output path.
  ExportTar({
    required this.dest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dest': dest,
    };
  }

  factory ExportTar.fromMap(Map<String, dynamic> map) {
    return ExportTar(
      dest: (map['dest'] as String).input(),
    );
  }
}

