// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_cws_basic_auth_credentials_get_zero_trust_cws_basic_auth_credentials_args_doc}
/// Arguments for getZeroTrustCwsBasicAuthCredentials.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_basic_auth_credentials_get_zero_trust_cws_basic_auth_credentials_args_doc}
class GetZeroTrustCwsBasicAuthCredentialsArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Filter to credentials attached to this deployment
  final pulumi.Input<String?>? deploymentId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to order results by (default: created*at)
  /// Available values: "username", "created*at", "updatedAt".
  final pulumi.Input<String?>? order;
  /// Filter by username (case-insensitive substring match)
  final pulumi.Input<String?>? username;

  /// Creates a new [GetZeroTrustCwsBasicAuthCredentialsArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [deploymentId] Filter to credentials attached to this deployment
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by (default: created*at)
  /// [username] Filter by username (case-insensitive substring match)
  const GetZeroTrustCwsBasicAuthCredentialsArgs({
    required this.accountId,
    this.deploymentId,
    this.direction,
    this.maxItems,
    this.order,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'deploymentId': ?deploymentId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'username': ?username,
    };
  }

  factory GetZeroTrustCwsBasicAuthCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthCredentialsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
