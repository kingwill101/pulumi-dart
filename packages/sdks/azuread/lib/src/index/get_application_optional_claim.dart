// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_optional_claim_access_token.dart';
import 'get_application_optional_claim_id_token.dart';
import 'get_application_optional_claim_saml2_token.dart';

class GetApplicationOptionalClaim {
  /// One or more `access_token` blocks as documented below.
  final List<GetApplicationOptionalClaimAccessToken>? accessTokens;
  /// One or more `id_token` blocks as documented below.
  final List<GetApplicationOptionalClaimIdToken>? idTokens;
  /// One or more `saml2_token` blocks as documented below.
  final List<GetApplicationOptionalClaimSaml2Token>? saml2Tokens;

  /// Creates a new [GetApplicationOptionalClaim].
  /// [accessTokens] One or more `access_token` blocks as documented below.
  /// [idTokens] One or more `id_token` blocks as documented below.
  /// [saml2Tokens] One or more `saml2_token` blocks as documented below.
  GetApplicationOptionalClaim({
    this.accessTokens,
    this.idTokens,
    this.saml2Tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokens': ?accessTokens == null ? null : pulumi.Input.encodeList<GetApplicationOptionalClaimAccessToken, Map<String, dynamic>>(accessTokens!, (value) => value.toMap()),
      'idTokens': ?idTokens == null ? null : pulumi.Input.encodeList<GetApplicationOptionalClaimIdToken, Map<String, dynamic>>(idTokens!, (value) => value.toMap()),
      'saml2Tokens': ?saml2Tokens == null ? null : pulumi.Input.encodeList<GetApplicationOptionalClaimSaml2Token, Map<String, dynamic>>(saml2Tokens!, (value) => value.toMap()),
    };
  }

  factory GetApplicationOptionalClaim.fromMap(Map<String, dynamic> map) {
    return GetApplicationOptionalClaim(
      accessTokens: map['accessTokens'] == null ? null : pulumi.Input.decodeList<GetApplicationOptionalClaimAccessToken>(map['accessTokens'], (value) => GetApplicationOptionalClaimAccessToken.fromMap((value as Map).cast<String, dynamic>())),
      idTokens: map['idTokens'] == null ? null : pulumi.Input.decodeList<GetApplicationOptionalClaimIdToken>(map['idTokens'], (value) => GetApplicationOptionalClaimIdToken.fromMap((value as Map).cast<String, dynamic>())),
      saml2Tokens: map['saml2Tokens'] == null ? null : pulumi.Input.decodeList<GetApplicationOptionalClaimSaml2Token>(map['saml2Tokens'], (value) => GetApplicationOptionalClaimSaml2Token.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

