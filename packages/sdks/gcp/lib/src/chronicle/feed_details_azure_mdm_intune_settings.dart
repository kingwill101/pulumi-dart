// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_azure_mdm_intune_settings_authentication.dart';

class FeedDetailsAzureMdmIntuneSettings {
  /// API Auth Endpoint.
  final pulumi.Input<String>? authEndpoint;
  /// Microsoft OAuth 2.0 client credentials grant.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureMdmIntuneSettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;
  /// Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [FeedDetailsAzureMdmIntuneSettings].
  /// [authEndpoint] API Auth Endpoint.
  /// [authentication] Microsoft OAuth 2.0 client credentials grant.
  /// [hostname] API Hostname.
  /// [tenantId] Tenant ID.
  const FeedDetailsAzureMdmIntuneSettings({
    this.authEndpoint,
    this.authentication,
    this.hostname,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authEndpoint': ?authEndpoint,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureMdmIntuneSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'tenantId': ?tenantId,
    };
  }

  factory FeedDetailsAzureMdmIntuneSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureMdmIntuneSettings(
      authEndpoint: (() { final guardedValue = map['authEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureMdmIntuneSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
