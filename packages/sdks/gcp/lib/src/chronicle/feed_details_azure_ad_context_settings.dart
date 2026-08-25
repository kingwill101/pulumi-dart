// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_azure_ad_context_settings_authentication.dart';

class FeedDetailsAzureAdContextSettings {
  /// API Auth Endpoint.
  final pulumi.Input<String?>? authEndpoint;
  /// Microsoft OAuth 2.0 client credentials grant.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureAdContextSettingsAuthentication?>? authentication;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;
  /// Whether to retrieve device information in user context.
  final pulumi.Input<bool?>? retrieveDevices;
  /// Whether to retrieve group information in user context.
  final pulumi.Input<bool?>? retrieveGroups;
  /// Tenant ID.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [FeedDetailsAzureAdContextSettings].
  /// [authEndpoint] API Auth Endpoint.
  /// [authentication] Microsoft OAuth 2.0 client credentials grant.
  /// [hostname] API Hostname.
  /// [retrieveDevices] Whether to retrieve device information in user context.
  /// [retrieveGroups] Whether to retrieve group information in user context.
  /// [tenantId] Tenant ID.
  const FeedDetailsAzureAdContextSettings({
    this.authEndpoint,
    this.authentication,
    this.hostname,
    this.retrieveDevices,
    this.retrieveGroups,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authEndpoint': ?authEndpoint,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureAdContextSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'retrieveDevices': ?retrieveDevices,
      'retrieveGroups': ?retrieveGroups,
      'tenantId': ?tenantId,
    };
  }

  factory FeedDetailsAzureAdContextSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureAdContextSettings(
      authEndpoint: (() { final guardedValue = map['authEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureAdContextSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retrieveDevices: (() { final guardedValue = map['retrieveDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retrieveGroups: (() { final guardedValue = map['retrieveGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
