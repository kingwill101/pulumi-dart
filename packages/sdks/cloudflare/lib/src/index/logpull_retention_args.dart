// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_logpull_retention_logpull_retention_args_doc}
/// The set of arguments for LogpullRetention.
/// {@endtemplate}
/// {@macro pulumi_index_logpull_retention_logpull_retention_args_doc}
class LogpullRetentionArgs {
  /// The log retention flag for Logpull API.
  final pulumi.Input<bool?>? flag;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [LogpullRetentionArgs].
  /// [flag] The log retention flag for Logpull API.
  /// [zoneId] Identifier.
  const LogpullRetentionArgs({
    this.flag,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flag': ?flag,
      'zoneId': zoneId,
    };
  }

  factory LogpullRetentionArgs.fromMap(Map<String, dynamic> map) {
    return LogpullRetentionArgs(
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
