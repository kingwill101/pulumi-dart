// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_subscription_restore_settings.dart';

/// Restore Settings  of the vault
class RestoreSettings {
  /// Settings for CrossSubscriptionRestore
  final pulumi.Input<CrossSubscriptionRestoreSettings>? crossSubscriptionRestoreSettings;

  /// Creates a new [RestoreSettings].
  /// [crossSubscriptionRestoreSettings] Settings for CrossSubscriptionRestore
  const RestoreSettings({
    this.crossSubscriptionRestoreSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossSubscriptionRestoreSettings': ?pulumi.Input.mapOptionalInputValue<CrossSubscriptionRestoreSettings, Map<String, dynamic>>(crossSubscriptionRestoreSettings, (value) => value.toMap()),
    };
  }

  factory RestoreSettings.fromMap(Map<String, dynamic> map) {
    return RestoreSettings(
      crossSubscriptionRestoreSettings: (() { final guardedValue = map['crossSubscriptionRestoreSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossSubscriptionRestoreSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
