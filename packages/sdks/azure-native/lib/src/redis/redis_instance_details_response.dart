// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of single instance of redis.
class RedisInstanceDetailsResponse {
  /// Specifies whether the instance is a primary node.
  final pulumi.Input<bool> isMaster;
  /// Specifies whether the instance is a primary node.
  final pulumi.Input<bool> isPrimary;
  /// If enableNonSslPort is true, provides Redis instance Non-SSL port.
  final pulumi.Input<int> nonSslPort;
  /// If clustering is enabled, the Shard ID of Redis Instance
  final pulumi.Input<int> shardId;
  /// Redis instance SSL port.
  final pulumi.Input<int> sslPort;
  /// If the Cache uses availability zones, specifies availability zone where this instance is located.
  final pulumi.Input<String> zone;

  /// Creates a new [RedisInstanceDetailsResponse].
  /// [isMaster] Specifies whether the instance is a primary node.
  /// [isPrimary] Specifies whether the instance is a primary node.
  /// [nonSslPort] If enableNonSslPort is true, provides Redis instance Non-SSL port.
  /// [shardId] If clustering is enabled, the Shard ID of Redis Instance
  /// [sslPort] Redis instance SSL port.
  /// [zone] If the Cache uses availability zones, specifies availability zone where this instance is located.
  const RedisInstanceDetailsResponse({
    required this.isMaster,
    required this.isPrimary,
    required this.nonSslPort,
    required this.shardId,
    required this.sslPort,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isMaster': isMaster,
      'isPrimary': isPrimary,
      'nonSslPort': nonSslPort,
      'shardId': shardId,
      'sslPort': sslPort,
      'zone': zone,
    };
  }

  factory RedisInstanceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RedisInstanceDetailsResponse(
      isMaster: pulumi.Input.fromValue(map['isMaster'] as bool),
      isPrimary: pulumi.Input.fromValue(map['isPrimary'] as bool),
      nonSslPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['nonSslPort'])),
      shardId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['shardId'])),
      sslPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['sslPort'])),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
