// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsBasicAuthCredentialFilter {
  /// Filter to credentials attached to this deployment
  final pulumi.Input<String?>? deploymentId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Field to order results by (default: created*at)
  /// Available values: "username", "created*at", "updatedAt".
  final pulumi.Input<String> order;
  /// Filter by username (case-insensitive substring match)
  final pulumi.Input<String?>? username;

  /// Creates a new [GetZeroTrustCwsBasicAuthCredentialFilter].
  /// [deploymentId] Filter to credentials attached to this deployment
  /// [direction] Sort direction (default: asc)
  /// [order] Field to order results by (default: created*at)
  /// [username] Filter by username (case-insensitive substring match)
  const GetZeroTrustCwsBasicAuthCredentialFilter({
    this.deploymentId,
    required this.direction,
    required this.order,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'direction': direction,
      'order': order,
      'username': ?username,
    };
  }

  factory GetZeroTrustCwsBasicAuthCredentialFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthCredentialFilter(
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      order: pulumi.Input.fromValue(map['order'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
