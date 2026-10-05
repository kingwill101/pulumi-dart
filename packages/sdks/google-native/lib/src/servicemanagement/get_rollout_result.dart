// ignore_for_file: unused_element, unnecessary_cast

import 'traffic_percent_strategy_response.dart';

/// Result data returned by getRollout.
class GetRolloutResult {
  /// Creation time of the rollout. Readonly.
  final String? createTime;
  /// The user who created the Rollout. Readonly.
  final String? createdBy;
  /// The strategy associated with a rollout to delete a `ManagedService`. Readonly.
  final Map<String, dynamic>? deleteServiceStrategy;
  /// Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where "date" is the create date in ISO 8601 format. "revision number" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is '2016-02-16r1'
  final String? rolloutId;
  /// The name of the service associated with this Rollout.
  final String? serviceName;
  /// The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly.
  final String? status;
  /// Google Service Control selects service configurations based on traffic percentage.
  final TrafficPercentStrategyResponse? trafficPercentStrategy;

  /// Creates a new [GetRolloutResult].
  /// [createTime] Creation time of the rollout. Readonly.
  /// [createdBy] The user who created the Rollout. Readonly.
  /// [deleteServiceStrategy] The strategy associated with a rollout to delete a `ManagedService`. Readonly.
  /// [rolloutId] Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where "date" is the create date in ISO 8601 format. "revision number" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is '2016-02-16r1'
  /// [serviceName] The name of the service associated with this Rollout.
  /// [status] The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly.
  /// [trafficPercentStrategy] Google Service Control selects service configurations based on traffic percentage.
  const GetRolloutResult({
    this.createTime,
    this.createdBy,
    this.deleteServiceStrategy,
    this.rolloutId,
    this.serviceName,
    this.status,
    this.trafficPercentStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'createdBy': ?createdBy,
      'deleteServiceStrategy': ?deleteServiceStrategy,
      'rolloutId': ?rolloutId,
      'serviceName': ?serviceName,
      'status': ?status,
      'trafficPercentStrategy': ?trafficPercentStrategy?.toMap(),
    };
  }

  factory GetRolloutResult.fromMap(Map<String, dynamic> map) {
    return GetRolloutResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteServiceStrategy: (() { final guardedValue = map['deleteServiceStrategy']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      rolloutId: (() { final guardedValue = map['rolloutId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficPercentStrategy: (() { final guardedValue = map['trafficPercentStrategy']; if (guardedValue == null) return null; return TrafficPercentStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
