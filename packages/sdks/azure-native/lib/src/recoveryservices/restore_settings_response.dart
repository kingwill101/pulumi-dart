// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_subscription_restore_settings_response.dart';

/// Restore Settings  of the vault
class RestoreSettingsResponse {
  /// Settings for CrossSubscriptionRestore
  final pulumi.Input<CrossSubscriptionRestoreSettingsResponse>? crossSubscriptionRestoreSettings;

  /// Creates a new [RestoreSettingsResponse].
  /// [crossSubscriptionRestoreSettings] Settings for CrossSubscriptionRestore
  RestoreSettingsResponse({
    this.crossSubscriptionRestoreSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossSubscriptionRestoreSettings': ?pulumi.Input.mapOptionalInputValue<CrossSubscriptionRestoreSettingsResponse, Map<String, dynamic>>(crossSubscriptionRestoreSettings, (value) => value.toMap()),
    };
  }

  factory RestoreSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RestoreSettingsResponse(
      crossSubscriptionRestoreSettings: map['crossSubscriptionRestoreSettings'] == null ? null : (CrossSubscriptionRestoreSettingsResponse.fromMap((map['crossSubscriptionRestoreSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

