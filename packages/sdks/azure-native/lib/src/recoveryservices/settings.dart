// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common settings field for backup management
class Settings {
  /// Workload compression flag. This has been added so that 'isSqlCompression'
  /// will be deprecated once clients upgrade to consider this flag.
  final pulumi.Input<bool>? isCompression;
  /// SQL compression flag
  final pulumi.Input<bool>? issqlcompression;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String>? timeZone;

  /// Creates a new [Settings].
  /// [isCompression] Workload compression flag. This has been added so that 'isSqlCompression'
  /// [issqlcompression] SQL compression flag
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  Settings({
    this.isCompression,
    this.issqlcompression,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompression': ?isCompression,
      'issqlcompression': ?issqlcompression,
      'timeZone': ?timeZone,
    };
  }

  factory Settings.fromMap(Map<String, dynamic> map) {
    return Settings(
      isCompression: map['isCompression'] == null ? null : (map['isCompression']! as bool).input(),
      issqlcompression: map['issqlcompression'] == null ? null : (map['issqlcompression']! as bool).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

