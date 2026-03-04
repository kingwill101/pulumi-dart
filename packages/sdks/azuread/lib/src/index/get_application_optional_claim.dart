// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_optional_claim_access_token.dart';
import 'get_application_optional_claim_id_token.dart';
import 'get_application_optional_claim_saml2_token.dart';

class GetApplicationOptionalClaim {
  /// One or more `access_token` blocks as documented below.
  final pulumi.Input<List<GetApplicationOptionalClaimAccessToken>>?
  accessTokens;

  /// One or more `id_token` blocks as documented below.
  final pulumi.Input<List<GetApplicationOptionalClaimIdToken>>? idTokens;

  /// One or more `saml2_token` blocks as documented below.
  final pulumi.Input<List<GetApplicationOptionalClaimSaml2Token>>? saml2Tokens;

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
      'accessTokens':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetApplicationOptionalClaimAccessToken>,
            List<Map<String, dynamic>>
          >(
            accessTokens,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationOptionalClaimAccessToken,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'idTokens':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetApplicationOptionalClaimIdToken>,
            List<Map<String, dynamic>>
          >(
            idTokens,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationOptionalClaimIdToken,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'saml2Tokens':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetApplicationOptionalClaimSaml2Token>,
            List<Map<String, dynamic>>
          >(
            saml2Tokens,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationOptionalClaimSaml2Token,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetApplicationOptionalClaim.fromMap(Map<String, dynamic> map) {
    return GetApplicationOptionalClaim(
      accessTokens: (() {
        final guardedValue = map['accessTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetApplicationOptionalClaimAccessToken>(
            guardedValue,
            (value) => GetApplicationOptionalClaimAccessToken.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      idTokens: (() {
        final guardedValue = map['idTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetApplicationOptionalClaimIdToken>(
            guardedValue,
            (value) => GetApplicationOptionalClaimIdToken.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      saml2Tokens: (() {
        final guardedValue = map['saml2Tokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetApplicationOptionalClaimSaml2Token>(
            guardedValue,
            (value) => GetApplicationOptionalClaimSaml2Token.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
