// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogpullRetention resources.
class LogpullRetentionState {
  /// The log retention flag for Logpull API.
  final pulumi.Input<bool?>? flag;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LogpullRetentionState].
  /// [flag] The log retention flag for Logpull API.
  /// [zoneId] Identifier.
  const LogpullRetentionState({
    this.flag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flag': ?flag,
      'zoneId': ?zoneId,
    };
  }

  factory LogpullRetentionState.fromMap(Map<String, dynamic> map) {
    return LogpullRetentionState(
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
