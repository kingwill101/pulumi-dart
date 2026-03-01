// ignore_for_file: unused_element, unnecessary_cast

import 'unhealthy_replica_info_response.dart';

/// SQL VM Troubleshooting additional properties.
class TroubleshootingAdditionalPropertiesResponse {
  /// The unhealthy replica information
  final UnhealthyReplicaInfoResponse? unhealthyReplicaInfo;

  /// Creates a new [TroubleshootingAdditionalPropertiesResponse].
  /// [unhealthyReplicaInfo] The unhealthy replica information
  TroubleshootingAdditionalPropertiesResponse({
    this.unhealthyReplicaInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unhealthyReplicaInfo': ?unhealthyReplicaInfo == null ? null : unhealthyReplicaInfo!.toMap(),
    };
  }

  factory TroubleshootingAdditionalPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TroubleshootingAdditionalPropertiesResponse(
      unhealthyReplicaInfo: map['unhealthyReplicaInfo'] == null ? null : UnhealthyReplicaInfoResponse.fromMap((map['unhealthyReplicaInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

