// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetBinaryCompression {
  /// The level of compression. Possible values are `Fastest` and `Optimal`.
  final pulumi.Input<String>? level;
  /// The type of compression used during transport. Possible values are `BZip2`, `Deflate`, `GZip`, `Tar`, `TarGZip` and `ZipDeflate`.
  final pulumi.Input<String> type;

  /// Creates a new [DatasetBinaryCompression].
  /// [level] The level of compression. Possible values are `Fastest` and `Optimal`.
  /// [type] The type of compression used during transport. Possible values are `BZip2`, `Deflate`, `GZip`, `Tar`, `TarGZip` and `ZipDeflate`.
  const DatasetBinaryCompression({
    this.level,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'type': type,
    };
  }

  factory DatasetBinaryCompression.fromMap(Map<String, dynamic> map) {
    return DatasetBinaryCompression(
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
