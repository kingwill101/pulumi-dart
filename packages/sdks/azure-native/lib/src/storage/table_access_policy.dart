// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table Access Policy Properties Object.
class TableAccessPolicy {
  /// Expiry time of the access policy
  final pulumi.Input<String>? expiryTime;
  /// Required. List of abbreviated permissions. Supported permission values include 'r','a','u','d'
  final pulumi.Input<String> permission;
  /// Start time of the access policy
  final pulumi.Input<String>? startTime;

  /// Creates a new [TableAccessPolicy].
  /// [expiryTime] Expiry time of the access policy
  /// [permission] Required. List of abbreviated permissions. Supported permission values include 'r','a','u','d'
  /// [startTime] Start time of the access policy
  TableAccessPolicy({
    this.expiryTime,
    required this.permission,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryTime': ?expiryTime,
      'permission': permission,
      'startTime': ?startTime,
    };
  }

  factory TableAccessPolicy.fromMap(Map<String, dynamic> map) {
    return TableAccessPolicy(
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      permission: (map['permission'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

