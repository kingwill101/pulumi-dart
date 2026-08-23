// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unhealthy_replica_info_response.dart';

/// SQL VM Troubleshooting additional properties.
class TroubleshootingAdditionalPropertiesResponse {
  /// The unhealthy replica information
  final pulumi.Input<UnhealthyReplicaInfoResponse>? unhealthyReplicaInfo;

  /// Creates a new [TroubleshootingAdditionalPropertiesResponse].
  /// [unhealthyReplicaInfo] The unhealthy replica information
  const TroubleshootingAdditionalPropertiesResponse({
    this.unhealthyReplicaInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unhealthyReplicaInfo': ?pulumi.Input.mapOptionalInputValue<UnhealthyReplicaInfoResponse, Map<String, dynamic>>(unhealthyReplicaInfo, (value) => value.toMap()),
    };
  }

  factory TroubleshootingAdditionalPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TroubleshootingAdditionalPropertiesResponse(
      unhealthyReplicaInfo: (() { final guardedValue = map['unhealthyReplicaInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnhealthyReplicaInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
