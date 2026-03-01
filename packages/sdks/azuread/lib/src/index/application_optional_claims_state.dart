// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_optional_claims_access_token.dart';
import 'application_optional_claims_id_token.dart';
import 'application_optional_claims_saml2_token.dart';

/// Input properties used for looking up and filtering ApplicationOptionalClaims resources.
class ApplicationOptionalClaimsState {
  /// One or more `access_token` blocks as documented below.
  final pulumi.Input<List<ApplicationOptionalClaimsAccessToken>>? accessTokens;
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// One or more `id_token` blocks as documented below.
  final pulumi.Input<List<ApplicationOptionalClaimsIdToken>>? idTokens;
  /// One or more `saml2_token` blocks as documented below.
  ///
  /// > At least one of `access_token`, `id_token` or `saml2_token` must be specified
  final pulumi.Input<List<ApplicationOptionalClaimsSaml2Token>>? saml2Tokens;

  /// Creates a new [ApplicationOptionalClaimsState].
  /// [accessTokens] One or more `access_token` blocks as documented below.
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [idTokens] One or more `id_token` blocks as documented below.
  /// [saml2Tokens] One or more `saml2_token` blocks as documented below.
  ApplicationOptionalClaimsState({
    pulumi.Output<List<ApplicationOptionalClaimsAccessToken>>? accessTokens,
    pulumi.Output<String>? applicationId,
    pulumi.Output<List<ApplicationOptionalClaimsIdToken>>? idTokens,
    pulumi.Output<List<ApplicationOptionalClaimsSaml2Token>>? saml2Tokens,
  }) :
      accessTokens = pulumi.Input.asOptionalInput<List<ApplicationOptionalClaimsAccessToken>>(accessTokens),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      idTokens = pulumi.Input.asOptionalInput<List<ApplicationOptionalClaimsIdToken>>(idTokens),
      saml2Tokens = pulumi.Input.asOptionalInput<List<ApplicationOptionalClaimsSaml2Token>>(saml2Tokens);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokens': ?pulumi.Input.mapOptionalInputValue<List<ApplicationOptionalClaimsAccessToken>, List<Map<String, dynamic>>>(accessTokens, (value) => pulumi.Input.encodeList<ApplicationOptionalClaimsAccessToken, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationId': ?applicationId,
      'idTokens': ?pulumi.Input.mapOptionalInputValue<List<ApplicationOptionalClaimsIdToken>, List<Map<String, dynamic>>>(idTokens, (value) => pulumi.Input.encodeList<ApplicationOptionalClaimsIdToken, Map<String, dynamic>>(value, (value) => value.toMap())),
      'saml2Tokens': ?pulumi.Input.mapOptionalInputValue<List<ApplicationOptionalClaimsSaml2Token>, List<Map<String, dynamic>>>(saml2Tokens, (value) => pulumi.Input.encodeList<ApplicationOptionalClaimsSaml2Token, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationOptionalClaimsState.fromMap(Map<String, dynamic> map) {
    return ApplicationOptionalClaimsState(
      accessTokens: map['accessTokens'] == null ? null : pulumi.Output.create<List<ApplicationOptionalClaimsAccessToken>>(pulumi.Input.decodeList<ApplicationOptionalClaimsAccessToken>(map['accessTokens'], (value) => ApplicationOptionalClaimsAccessToken.fromMap((value as Map).cast<String, dynamic>()))),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      idTokens: map['idTokens'] == null ? null : pulumi.Output.create<List<ApplicationOptionalClaimsIdToken>>(pulumi.Input.decodeList<ApplicationOptionalClaimsIdToken>(map['idTokens'], (value) => ApplicationOptionalClaimsIdToken.fromMap((value as Map).cast<String, dynamic>()))),
      saml2Tokens: map['saml2Tokens'] == null ? null : pulumi.Output.create<List<ApplicationOptionalClaimsSaml2Token>>(pulumi.Input.decodeList<ApplicationOptionalClaimsSaml2Token>(map['saml2Tokens'], (value) => ApplicationOptionalClaimsSaml2Token.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

