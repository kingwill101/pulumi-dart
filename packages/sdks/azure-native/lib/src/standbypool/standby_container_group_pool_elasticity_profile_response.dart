// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the elasticity profile of the standby container group pools.
class StandbyContainerGroupPoolElasticityProfileResponse {
  /// Specifies maximum number of standby container groups in the standby pool.
  final double maxReadyCapacity;
  /// Specifies refill policy of the pool.
  final String? refillPolicy;

  /// Creates a new [StandbyContainerGroupPoolElasticityProfileResponse].
  /// [maxReadyCapacity] Specifies maximum number of standby container groups in the standby pool.
  /// [refillPolicy] Specifies refill policy of the pool.
  StandbyContainerGroupPoolElasticityProfileResponse({
    required this.maxReadyCapacity,
    this.refillPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadyCapacity': maxReadyCapacity,
      'refillPolicy': ?refillPolicy,
    };
  }

  factory StandbyContainerGroupPoolElasticityProfileResponse.fromMap(Map<String, dynamic> map) {
    return StandbyContainerGroupPoolElasticityProfileResponse(
      maxReadyCapacity: map['maxReadyCapacity'] as double,
      refillPolicy: map['refillPolicy'] == null ? null : map['refillPolicy'] as String,
    );
  }
}

