// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Cross Subscription Restore Settings
class CrossSubscriptionRestoreSettings {
  final pulumi.Input<String>? crossSubscriptionRestoreState;

  /// Creates a new [CrossSubscriptionRestoreSettings].
  /// [crossSubscriptionRestoreState] Optional.
  const CrossSubscriptionRestoreSettings({
    this.crossSubscriptionRestoreState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossSubscriptionRestoreState': ?crossSubscriptionRestoreState,
    };
  }

  factory CrossSubscriptionRestoreSettings.fromMap(Map<String, dynamic> map) {
    return CrossSubscriptionRestoreSettings(
      crossSubscriptionRestoreState: (() { final guardedValue = map['crossSubscriptionRestoreState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

