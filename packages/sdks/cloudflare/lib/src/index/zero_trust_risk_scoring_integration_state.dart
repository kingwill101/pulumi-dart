// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustRiskScoringIntegration resources.
class ZeroTrustRiskScoringIntegrationState {
  final pulumi.Input<String?>? accountId;
  /// The Cloudflare account tag.
  final pulumi.Input<String?>? accountTag;
  /// Whether this integration is enabled. If disabled, no risk changes will be exported to the third-party.
  final pulumi.Input<bool?>? active;
  /// When the integration was created in RFC3339 format.
  final pulumi.Input<String?>? createdAt;
  /// Available values: "Okta".
  final pulumi.Input<String?>? integrationType;
  /// A reference id that can be supplied by the client. Currently this should be set to the Access-Okta IDP ID (a UUIDv4).
  /// https://developers.cloudflare.com/api/operations/access-identity-providers-get-an-access-identity-provider
  final pulumi.Input<String?>? referenceId;
  /// The base url of the tenant, e.g. "https://tenant.okta.com".
  final pulumi.Input<String?>? tenantUrl;
  /// The URL for the Shared Signals Framework configuration, e.g. "/.well-known/sse-configuration/{integration*uuid}/". https://openid.net/specs/openid-sse-framework-1*0.html#rfc.section.6.2.1.
  final pulumi.Input<String?>? wellKnownUrl;

  /// Creates a new [ZeroTrustRiskScoringIntegrationState].
  /// [accountId] Optional.
  /// [accountTag] The Cloudflare account tag.
  /// [active] Whether this integration is enabled. If disabled, no risk changes will be exported to the third-party.
  /// [createdAt] When the integration was created in RFC3339 format.
  /// [integrationType] Available values: "Okta".
  /// [referenceId] A reference id that can be supplied by the client. Currently this should be set to the Access-Okta IDP ID (a UUIDv4).
  /// [tenantUrl] The base url of the tenant, e.g. "https://tenant.okta.com".
  /// [wellKnownUrl] The URL for the Shared Signals Framework configuration, e.g. "/.well-known/sse-configuration/{integration*uuid}/". https://openid.net/specs/openid-sse-framework-1*0.html#rfc.section.6.2.1.
  const ZeroTrustRiskScoringIntegrationState({
    this.accountId,
    this.accountTag,
    this.active,
    this.createdAt,
    this.integrationType,
    this.referenceId,
    this.tenantUrl,
    this.wellKnownUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountTag': ?accountTag,
      'active': ?active,
      'createdAt': ?createdAt,
      'integrationType': ?integrationType,
      'referenceId': ?referenceId,
      'tenantUrl': ?tenantUrl,
      'wellKnownUrl': ?wellKnownUrl,
    };
  }

  factory ZeroTrustRiskScoringIntegrationState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustRiskScoringIntegrationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountTag: (() { final guardedValue = map['accountTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationType: (() { final guardedValue = map['integrationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantUrl: (() { final guardedValue = map['tenantUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wellKnownUrl: (() { final guardedValue = map['wellKnownUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
