// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_basic_auth_credentials_result.dart';

/// Result data returned by getZeroTrustCwsBasicAuthCredentials.
class GetZeroTrustCwsBasicAuthCredentialsInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Filter to credentials attached to this deployment
  final String? deploymentId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to order results by (default: created*at)
  /// Available values: "username", "created*at", "updatedAt".
  final String? order;
  /// The items returned by the data source
  final List<GetZeroTrustCwsBasicAuthCredentialsResult>? results;
  /// Filter by username (case-insensitive substring match)
  final String? username;

  /// Creates a new [GetZeroTrustCwsBasicAuthCredentialsInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [deploymentId] Filter to credentials attached to this deployment
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by (default: created*at)
  /// [results] The items returned by the data source
  /// [username] Filter by username (case-insensitive substring match)
  const GetZeroTrustCwsBasicAuthCredentialsInvokeResult({
    this.accountId,
    this.deploymentId,
    this.direction,
    this.maxItems,
    this.order,
    this.results,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'deploymentId': ?deploymentId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsBasicAuthCredentialsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'username': ?username,
    };
  }

  factory GetZeroTrustCwsBasicAuthCredentialsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthCredentialsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsBasicAuthCredentialsResult>(guardedValue, (value) => GetZeroTrustCwsBasicAuthCredentialsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
