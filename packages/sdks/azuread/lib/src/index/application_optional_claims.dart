// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_optional_claims_access_token.dart';
import 'application_optional_claims_id_token.dart';
import 'application_optional_claims_saml2_token.dart';

class ApplicationOptionalClaims {
  /// One or more `access_token` blocks as documented below.
  final pulumi.Input<List<ApplicationOptionalClaimsAccessToken>>? accessTokens;
  /// One or more `id_token` blocks as documented below.
  final pulumi.Input<List<ApplicationOptionalClaimsIdToken>>? idTokens;
  /// One or more `saml2_token` blocks as documented below.
  final pulumi.Input<List<ApplicationOptionalClaimsSaml2Token>>? saml2Tokens;

  /// Creates a new [ApplicationOptionalClaims].
  /// [accessTokens] One or more `access_token` blocks as documented below.
  /// [idTokens] One or more `id_token` blocks as documented below.
  /// [saml2Tokens] One or more `saml2_token` blocks as documented below.
  const ApplicationOptionalClaims({
    this.accessTokens,
    this.idTokens,
    this.saml2Tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokens': ?pulumi.Input.mapOptionalInputValue<List<ApplicationOptionalClaimsAccessToken>, List<Map<String, dynamic>>>(accessTokens, (value) => pulumi.Input.encodeList<ApplicationOptionalClaimsAccessToken, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idTokens': ?pulumi.Input.mapOptionalInputValue<List<ApplicationOptionalClaimsIdToken>, List<Map<String, dynamic>>>(idTokens, (value) => pulumi.Input.encodeList<ApplicationOptionalClaimsIdToken, Map<String, dynamic>>(value, (value) => value.toMap())),
      'saml2Tokens': ?pulumi.Input.mapOptionalInputValue<List<ApplicationOptionalClaimsSaml2Token>, List<Map<String, dynamic>>>(saml2Tokens, (value) => pulumi.Input.encodeList<ApplicationOptionalClaimsSaml2Token, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationOptionalClaims.fromMap(Map<String, dynamic> map) {
    return ApplicationOptionalClaims(
      accessTokens: (() { final guardedValue = map['accessTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationOptionalClaimsAccessToken>(guardedValue, (value) => ApplicationOptionalClaimsAccessToken.fromMap((value as Map).cast<String, dynamic>()))); })(),
      idTokens: (() { final guardedValue = map['idTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationOptionalClaimsIdToken>(guardedValue, (value) => ApplicationOptionalClaimsIdToken.fromMap((value as Map).cast<String, dynamic>()))); })(),
      saml2Tokens: (() { final guardedValue = map['saml2Tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationOptionalClaimsSaml2Token>(guardedValue, (value) => ApplicationOptionalClaimsSaml2Token.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

