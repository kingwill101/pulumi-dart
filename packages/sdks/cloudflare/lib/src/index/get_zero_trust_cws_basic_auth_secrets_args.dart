// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_cws_basic_auth_secrets_get_zero_trust_cws_basic_auth_secrets_args_doc}
/// Arguments for getZeroTrustCwsBasicAuthSecrets.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_basic_auth_secrets_get_zero_trust_cws_basic_auth_secrets_args_doc}
class GetZeroTrustCwsBasicAuthSecretsArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// ID of the parent credential
  final pulumi.Input<String> credentialId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to order results by (default: created*at)
  /// Available values: "created*at".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetZeroTrustCwsBasicAuthSecretsArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [credentialId] ID of the parent credential
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by (default: created*at)
  const GetZeroTrustCwsBasicAuthSecretsArgs({
    required this.accountId,
    required this.credentialId,
    this.direction,
    this.maxItems,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'credentialId': credentialId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
    };
  }

  factory GetZeroTrustCwsBasicAuthSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthSecretsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      credentialId: pulumi.Input.fromValue(map['credentialId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
