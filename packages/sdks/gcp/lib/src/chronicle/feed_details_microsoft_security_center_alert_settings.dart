// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_microsoft_security_center_alert_settings_authentication.dart';

class FeedDetailsMicrosoftSecurityCenterAlertSettings {
  /// API Auth Endpoint.
  final pulumi.Input<String>? authEndpoint;
  /// Microsoft OAuth 2.0 client credentials grant.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMicrosoftSecurityCenterAlertSettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;
  /// Subscription ID of the Microsoft security center alert settings alert.
  final pulumi.Input<String>? subscriptionId;
  /// Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [FeedDetailsMicrosoftSecurityCenterAlertSettings].
  /// [authEndpoint] API Auth Endpoint.
  /// [authentication] Microsoft OAuth 2.0 client credentials grant.
  /// [hostname] API Hostname.
  /// [subscriptionId] Subscription ID of the Microsoft security center alert settings alert.
  /// [tenantId] Tenant ID.
  const FeedDetailsMicrosoftSecurityCenterAlertSettings({
    this.authEndpoint,
    this.authentication,
    this.hostname,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authEndpoint': ?authEndpoint,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMicrosoftSecurityCenterAlertSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory FeedDetailsMicrosoftSecurityCenterAlertSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsMicrosoftSecurityCenterAlertSettings(
      authEndpoint: (() { final guardedValue = map['authEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMicrosoftSecurityCenterAlertSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
