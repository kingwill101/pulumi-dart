// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workday_settings_authentication.dart';

class FeedDetailsWorkdaySettings {
  /// Authentication for Workday.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkdaySettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;
  /// Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [FeedDetailsWorkdaySettings].
  /// [authentication] Authentication for Workday.
  /// [hostname] API Hostname.
  /// [tenantId] Tenant ID.
  const FeedDetailsWorkdaySettings({
    this.authentication,
    this.hostname,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkdaySettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'tenantId': ?tenantId,
    };
  }

  factory FeedDetailsWorkdaySettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkdaySettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkdaySettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
