// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The blob service properties for change feed events.
class ChangeFeedResponse {
  /// Indicates whether change feed event logging is enabled for the Blob service.
  final pulumi.Input<bool>? enabled;
  /// Indicates the duration of changeFeed retention in days. Minimum value is 1 day and maximum value is 146000 days (400 years). A null value indicates an infinite retention of the change feed.
  final pulumi.Input<int>? retentionInDays;

  /// Creates a new [ChangeFeedResponse].
  /// [enabled] Indicates whether change feed event logging is enabled for the Blob service.
  /// [retentionInDays] Indicates the duration of changeFeed retention in days. Minimum value is 1 day and maximum value is 146000 days (400 years). A null value indicates an infinite retention of the change feed.
  const ChangeFeedResponse({
    this.enabled,
    this.retentionInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retentionInDays': ?retentionInDays,
    };
  }

  factory ChangeFeedResponse.fromMap(Map<String, dynamic> map) {
    return ChangeFeedResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
