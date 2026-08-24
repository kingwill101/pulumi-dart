// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustRiskScoringIntegration.
class GetZeroTrustRiskScoringIntegrationResult {
  final String? accountId;
  /// The Cloudflare account tag.
  final String? accountTag;
  /// Whether this integration is enabled and should export changes in risk score.
  final bool? active;
  /// When the integration was created in RFC3339 format.
  final String? createdAt;
  /// The ID of this resource.
  final String? id;
  final String? integrationId;
  /// Available values: "Okta".
  final String? integrationType;
  /// A reference ID defined by the client.
  /// Should be set to the Access-Okta IDP integration ID.
  /// Useful when the risk-score integration needs to be associated with a secondary asset and recalled using that ID.
  final String? referenceId;
  /// The base URL for the tenant. E.g. "https://tenant.okta.com".
  final String? tenantUrl;
  /// The URL for the Shared Signals Framework configuration, e.g. "/.well-known/sse-configuration/{integration*uuid}/". https://openid.net/specs/openid-sse-framework-1*0.html#rfc.section.6.2.1.
  final String? wellKnownUrl;

  /// Creates a new [GetZeroTrustRiskScoringIntegrationResult].
  /// [accountId] Optional.
  /// [accountTag] The Cloudflare account tag.
  /// [active] Whether this integration is enabled and should export changes in risk score.
  /// [createdAt] When the integration was created in RFC3339 format.
  /// [id] The ID of this resource.
  /// [integrationId] Optional.
  /// [integrationType] Available values: "Okta".
  /// [referenceId] A reference ID defined by the client.
  /// [tenantUrl] The base URL for the tenant. E.g. "https://tenant.okta.com".
  /// [wellKnownUrl] The URL for the Shared Signals Framework configuration, e.g. "/.well-known/sse-configuration/{integration*uuid}/". https://openid.net/specs/openid-sse-framework-1*0.html#rfc.section.6.2.1.
  const GetZeroTrustRiskScoringIntegrationResult({
    this.accountId,
    this.accountTag,
    this.active,
    this.createdAt,
    this.id,
    this.integrationId,
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
      'id': ?id,
      'integrationId': ?integrationId,
      'integrationType': ?integrationType,
      'referenceId': ?referenceId,
      'tenantUrl': ?tenantUrl,
      'wellKnownUrl': ?wellKnownUrl,
    };
  }

  factory GetZeroTrustRiskScoringIntegrationResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustRiskScoringIntegrationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountTag: (() { final guardedValue = map['accountTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationType: (() { final guardedValue = map['integrationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantUrl: (() { final guardedValue = map['tenantUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wellKnownUrl: (() { final guardedValue = map['wellKnownUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
