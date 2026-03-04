// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how input data is compressed
class Compression {
  /// Indicates the type of compression that the input uses. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String> type;

  /// Creates a new [Compression].
  /// [type] Indicates the type of compression that the input uses. Required on PUT (CreateOrReplace) requests.
  Compression({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory Compression.fromMap(Map<String, dynamic> map) {
    return Compression(type: pulumi.Input.fromValue(map['type'] as String));
  }
}
