// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_optional_claims_access_token.dart';
import 'application_optional_claims_id_token.dart';
import 'application_optional_claims_saml2_token.dart';

/// {@template pulumi_index_application_optional_claims_application_optional_claims_args_doc}
/// The set of arguments for ApplicationOptionalClaims.
/// {@endtemplate}
/// {@macro pulumi_index_application_optional_claims_application_optional_claims_args_doc}
class ApplicationOptionalClaimsArgs {
  /// One or more `access_token` blocks as documented below.
  final pulumi.Input<List<ApplicationOptionalClaimsAccessToken>>? accessTokens;

  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;

  /// One or more `id_token` blocks as documented below.
  final pulumi.Input<List<ApplicationOptionalClaimsIdToken>>? idTokens;

  /// One or more `saml2_token` blocks as documented below.
  ///
  /// &gt; At least one of `access_token`, `id_token` or `saml2_token` must be specified
  final pulumi.Input<List<ApplicationOptionalClaimsSaml2Token>>? saml2Tokens;

  /// Creates a new [ApplicationOptionalClaimsArgs].
  /// [accessTokens] One or more `access_token` blocks as documented below.
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [idTokens] One or more `id_token` blocks as documented below.
  /// [saml2Tokens] One or more `saml2_token` blocks as documented below.
  ApplicationOptionalClaimsArgs({
    this.accessTokens,
    required this.applicationId,
    this.idTokens,
    this.saml2Tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokens':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationOptionalClaimsAccessToken>,
            List<Map<String, dynamic>>
          >(
            accessTokens,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationOptionalClaimsAccessToken,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'applicationId': applicationId,
      'idTokens':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationOptionalClaimsIdToken>,
            List<Map<String, dynamic>>
          >(
            idTokens,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationOptionalClaimsIdToken,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'saml2Tokens':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationOptionalClaimsSaml2Token>,
            List<Map<String, dynamic>>
          >(
            saml2Tokens,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationOptionalClaimsSaml2Token,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationOptionalClaimsArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationOptionalClaimsArgs(
      accessTokens: (() {
        final guardedValue = map['accessTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationOptionalClaimsAccessToken>(
            guardedValue,
            (value) => ApplicationOptionalClaimsAccessToken.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      idTokens: (() {
        final guardedValue = map['idTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationOptionalClaimsIdToken>(
            guardedValue,
            (value) => ApplicationOptionalClaimsIdToken.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      saml2Tokens: (() {
        final guardedValue = map['saml2Tokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationOptionalClaimsSaml2Token>(
            guardedValue,
            (value) => ApplicationOptionalClaimsSaml2Token.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
