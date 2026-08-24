// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustRiskScoringIntegrationsResult {
  /// The Cloudflare account tag.
  final pulumi.Input<String> accountTag;
  /// Whether this integration is enabled and should export changes in risk score.
  final pulumi.Input<bool> active;
  /// When the integration was created in RFC3339 format.
  final pulumi.Input<String> createdAt;
  /// The id of the integration, a UUIDv4.
  final pulumi.Input<String> id;
  /// Available values: "Okta".
  final pulumi.Input<String> integrationType;
  /// A reference ID defined by the client.
  /// Should be set to the Access-Okta IDP integration ID.
  /// Useful when the risk-score integration needs to be associated with a secondary asset and recalled using that ID.
  final pulumi.Input<String> referenceId;
  /// The base URL for the tenant. E.g. "https://tenant.okta.com".
  final pulumi.Input<String> tenantUrl;
  /// The URL for the Shared Signals Framework configuration, e.g. "/.well-known/sse-configuration/{integration*uuid}/". https://openid.net/specs/openid-sse-framework-1*0.html#rfc.section.6.2.1.
  final pulumi.Input<String> wellKnownUrl;

  /// Creates a new [GetZeroTrustRiskScoringIntegrationsResult].
  /// [accountTag] The Cloudflare account tag.
  /// [active] Whether this integration is enabled and should export changes in risk score.
  /// [createdAt] When the integration was created in RFC3339 format.
  /// [id] The id of the integration, a UUIDv4.
  /// [integrationType] Available values: "Okta".
  /// [referenceId] A reference ID defined by the client.
  /// [tenantUrl] The base URL for the tenant. E.g. "https://tenant.okta.com".
  /// [wellKnownUrl] The URL for the Shared Signals Framework configuration, e.g. "/.well-known/sse-configuration/{integration*uuid}/". https://openid.net/specs/openid-sse-framework-1*0.html#rfc.section.6.2.1.
  const GetZeroTrustRiskScoringIntegrationsResult({
    required this.accountTag,
    required this.active,
    required this.createdAt,
    required this.id,
    required this.integrationType,
    required this.referenceId,
    required this.tenantUrl,
    required this.wellKnownUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTag': accountTag,
      'active': active,
      'createdAt': createdAt,
      'id': id,
      'integrationType': integrationType,
      'referenceId': referenceId,
      'tenantUrl': tenantUrl,
      'wellKnownUrl': wellKnownUrl,
    };
  }

  factory GetZeroTrustRiskScoringIntegrationsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustRiskScoringIntegrationsResult(
      accountTag: pulumi.Input.fromValue(map['accountTag'] as String),
      active: pulumi.Input.fromValue(map['active'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      integrationType: pulumi.Input.fromValue(map['integrationType'] as String),
      referenceId: pulumi.Input.fromValue(map['referenceId'] as String),
      tenantUrl: pulumi.Input.fromValue(map['tenantUrl'] as String),
      wellKnownUrl: pulumi.Input.fromValue(map['wellKnownUrl'] as String),
    );
  }
}
