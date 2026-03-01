// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_optional_claims_access_token.dart';
import 'application_optional_claims_id_token.dart';
import 'application_optional_claims_saml2_token.dart';

class ApplicationOptionalClaims {
  /// One or more `access_token` blocks as documented below.
  final List<ApplicationOptionalClaimsAccessToken>? accessTokens;
  /// One or more `id_token` blocks as documented below.
  final List<ApplicationOptionalClaimsIdToken>? idTokens;
  /// One or more `saml2_token` blocks as documented below.
  final List<ApplicationOptionalClaimsSaml2Token>? saml2Tokens;

  /// Creates a new [ApplicationOptionalClaims].
  /// [accessTokens] One or more `access_token` blocks as documented below.
  /// [idTokens] One or more `id_token` blocks as documented below.
  /// [saml2Tokens] One or more `saml2_token` blocks as documented below.
  ApplicationOptionalClaims({
    this.accessTokens,
    this.idTokens,
    this.saml2Tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokens': ?accessTokens == null ? null : pulumi.Input.encodeList<ApplicationOptionalClaimsAccessToken, Map<String, dynamic>>(accessTokens!, (value) => value.toMap()),
      'idTokens': ?idTokens == null ? null : pulumi.Input.encodeList<ApplicationOptionalClaimsIdToken, Map<String, dynamic>>(idTokens!, (value) => value.toMap()),
      'saml2Tokens': ?saml2Tokens == null ? null : pulumi.Input.encodeList<ApplicationOptionalClaimsSaml2Token, Map<String, dynamic>>(saml2Tokens!, (value) => value.toMap()),
    };
  }

  factory ApplicationOptionalClaims.fromMap(Map<String, dynamic> map) {
    return ApplicationOptionalClaims(
      accessTokens: map['accessTokens'] == null ? null : pulumi.Input.decodeList<ApplicationOptionalClaimsAccessToken>(map['accessTokens'], (value) => ApplicationOptionalClaimsAccessToken.fromMap((value as Map).cast<String, dynamic>())),
      idTokens: map['idTokens'] == null ? null : pulumi.Input.decodeList<ApplicationOptionalClaimsIdToken>(map['idTokens'], (value) => ApplicationOptionalClaimsIdToken.fromMap((value as Map).cast<String, dynamic>())),
      saml2Tokens: map['saml2Tokens'] == null ? null : pulumi.Input.decodeList<ApplicationOptionalClaimsSaml2Token>(map['saml2Tokens'], (value) => ApplicationOptionalClaimsSaml2Token.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

