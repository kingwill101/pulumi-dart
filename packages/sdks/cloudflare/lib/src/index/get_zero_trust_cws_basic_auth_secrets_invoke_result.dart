// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_basic_auth_secrets_result.dart';

/// Result data returned by getZeroTrustCwsBasicAuthSecrets.
class GetZeroTrustCwsBasicAuthSecretsInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// ID of the parent credential
  final String? credentialId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to order results by (default: created*at)
  /// Available values: "created*at".
  final String? order;
  /// The items returned by the data source
  final List<GetZeroTrustCwsBasicAuthSecretsResult>? results;

  /// Creates a new [GetZeroTrustCwsBasicAuthSecretsInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [credentialId] ID of the parent credential
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by (default: created*at)
  /// [results] The items returned by the data source
  const GetZeroTrustCwsBasicAuthSecretsInvokeResult({
    this.accountId,
    this.credentialId,
    this.direction,
    this.maxItems,
    this.order,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'credentialId': ?credentialId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsBasicAuthSecretsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustCwsBasicAuthSecretsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthSecretsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsBasicAuthSecretsResult>(guardedValue, (value) => GetZeroTrustCwsBasicAuthSecretsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
