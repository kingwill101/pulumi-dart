// ignore_for_file: unused_element, unnecessary_cast


/// Details of single instance of redis.
class RedisInstanceDetailsResponse {
  /// Specifies whether the instance is a primary node.
  final bool isMaster;
  /// Specifies whether the instance is a primary node.
  final bool isPrimary;
  /// If enableNonSslPort is true, provides Redis instance Non-SSL port.
  final int nonSslPort;
  /// If clustering is enabled, the Shard ID of Redis Instance
  final int shardId;
  /// Redis instance SSL port.
  final int sslPort;
  /// If the Cache uses availability zones, specifies availability zone where this instance is located.
  final String zone;

  /// Creates a new [RedisInstanceDetailsResponse].
  /// [isMaster] Specifies whether the instance is a primary node.
  /// [isPrimary] Specifies whether the instance is a primary node.
  /// [nonSslPort] If enableNonSslPort is true, provides Redis instance Non-SSL port.
  /// [shardId] If clustering is enabled, the Shard ID of Redis Instance
  /// [sslPort] Redis instance SSL port.
  /// [zone] If the Cache uses availability zones, specifies availability zone where this instance is located.
  RedisInstanceDetailsResponse({
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
      isMaster: map['isMaster'] as bool,
      isPrimary: map['isPrimary'] as bool,
      nonSslPort: map['nonSslPort'] as int,
      shardId: map['shardId'] as int,
      sslPort: map['sslPort'] as int,
      zone: map['zone'] as String,
    );
  }
}

