// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Cross Subscription Restore Settings
class CrossSubscriptionRestoreSettingsResponse {
  final pulumi.Input<String>? crossSubscriptionRestoreState;

  /// Creates a new [CrossSubscriptionRestoreSettingsResponse].
  /// [crossSubscriptionRestoreState] Optional.
  CrossSubscriptionRestoreSettingsResponse({
    this.crossSubscriptionRestoreState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossSubscriptionRestoreState': ?crossSubscriptionRestoreState,
    };
  }

  factory CrossSubscriptionRestoreSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CrossSubscriptionRestoreSettingsResponse(
      crossSubscriptionRestoreState: (() { final guardedValue = map['crossSubscriptionRestoreState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

