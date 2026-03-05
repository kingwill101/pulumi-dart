// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_extended_attributes_oauth2_client_client_secret.dart';
import 'workforce_pool_provider_extended_attributes_oauth2_client_query_parameters.dart';

class WorkforcePoolProviderExtendedAttributesOauth2Client {
  /// Represents the IdP and type of claims that should be fetched.
  /// * AZURE_AD_GROUPS_ID:  Used to get the user's group claims from the Azure AD identity provider
  /// using configuration provided in ExtendedAttributesOAuth2Client and 'id'
  /// property of the 'microsoft.graph.group' object is used for claim mapping. See
  /// https://learn.microsoft.com/en-us/graph/api/resources/group?view=graph-rest-1.0#properties
  /// for more details on 'microsoft.graph.group' properties. The
  /// group IDs obtained from Azure AD are present in 'assertion.groups' for
  /// OIDC providers and 'assertion.attributes.groups' for SAML providers for
  /// attribute mapping. Possible values: ["AZURE_AD_GROUPS_ID"]
  final pulumi.Input<String> attributesType;
  /// The OAuth 2.0 client ID for retrieving extended attributes from the identity provider. Required to get the Access Token using client credentials grant flow.
  final pulumi.Input<String> clientId;
  /// The OAuth 2.0 client secret for retrieving extended attributes from the identity provider. Required to get the Access Token using client credentials grant flow.
  final pulumi.Input<WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret> clientSecret;
  /// The OIDC identity provider's issuer URI. Must be a valid URI using the 'https' scheme. Required to get the OIDC discovery document.
  final pulumi.Input<String> issuerUri;
  /// Represents the parameters to control which claims are fetched from an IdP.
  final pulumi.Input<WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters>? queryParameters;

  /// Creates a new [WorkforcePoolProviderExtendedAttributesOauth2Client].
  /// [attributesType] Represents the IdP and type of claims that should be fetched.
  /// [clientId] The OAuth 2.0 client ID for retrieving extended attributes from the identity provider. Required to get the Access Token using client credentials grant flow.
  /// [clientSecret] The OAuth 2.0 client secret for retrieving extended attributes from the identity provider. Required to get the Access Token using client credentials grant flow.
  /// [issuerUri] The OIDC identity provider's issuer URI. Must be a valid URI using the 'https' scheme. Required to get the OIDC discovery document.
  /// [queryParameters] Represents the parameters to control which claims are fetched from an IdP.
  WorkforcePoolProviderExtendedAttributesOauth2Client({
    required this.attributesType,
    required this.clientId,
    required this.clientSecret,
    required this.issuerUri,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributesType': attributesType,
      'clientId': clientId,
      'clientSecret': pulumi.Input.mapInputValue<WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'issuerUri': issuerUri,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters, Map<String, dynamic>>(queryParameters, (value) => value.toMap()),
    };
  }

  factory WorkforcePoolProviderExtendedAttributesOauth2Client.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtendedAttributesOauth2Client(
      attributesType: pulumi.Input.fromValue(map['attributesType'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())),
      issuerUri: pulumi.Input.fromValue(map['issuerUri'] as String),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

