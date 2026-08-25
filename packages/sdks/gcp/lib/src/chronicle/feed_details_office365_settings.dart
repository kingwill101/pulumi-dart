// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_office365_settings_authentication.dart';

class FeedDetailsOffice365Settings {
  /// API Auth Endpoint.
  final pulumi.Input<String?>? authEndpoint;
  /// Microsoft OAuth 2.0 client credentials grant.
  final pulumi.Input<FeedDetailsOffice365SettingsAuthentication?>? authentication;
  /// Supported office 365 content type.
  /// Possible values:
  /// AUDIT_AZURE_ACTIVE_DIRECTORY
  /// AUDIT_EXCHANGE
  /// AUDIT_SHARE_POINT
  /// AUDIT_GENERAL
  /// DLP_ALL
  final pulumi.Input<String?>? contentType;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;
  /// Tenant ID.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [FeedDetailsOffice365Settings].
  /// [authEndpoint] API Auth Endpoint.
  /// [authentication] Microsoft OAuth 2.0 client credentials grant.
  /// [contentType] Supported office 365 content type.
  /// [hostname] API Hostname.
  /// [tenantId] Tenant ID.
  const FeedDetailsOffice365Settings({
    this.authEndpoint,
    this.authentication,
    this.contentType,
    this.hostname,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authEndpoint': ?authEndpoint,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsOffice365SettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'contentType': ?contentType,
      'hostname': ?hostname,
      'tenantId': ?tenantId,
    };
  }

  factory FeedDetailsOffice365Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsOffice365Settings(
      authEndpoint: (() { final guardedValue = map['authEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsOffice365SettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
