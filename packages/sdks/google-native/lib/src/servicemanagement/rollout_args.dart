// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_percent_strategy.dart';

/// {@template pulumi_servicemanagement_v1_rollout_args_doc}
/// The set of arguments for Rollout.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_rollout_args_doc}
class RolloutArgs {
  /// Creation time of the rollout. Readonly.
  final pulumi.Input<String>? createTime;
  /// The user who created the Rollout. Readonly.
  final pulumi.Input<String>? createdBy;
  /// The strategy associated with a rollout to delete a `ManagedService`. Readonly.
  final pulumi.Input<Map<String, dynamic>>? deleteServiceStrategy;
  /// Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where "date" is the create date in ISO 8601 format. "revision number" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is '2016-02-16r1'
  final pulumi.Input<String>? rolloutId;
  /// The name of the service associated with this Rollout.
  final pulumi.Input<String> serviceName;
  /// Google Service Control selects service configurations based on traffic percentage.
  final pulumi.Input<TrafficPercentStrategy>? trafficPercentStrategy;

  /// Creates a new [RolloutArgs].
  /// [createTime] Creation time of the rollout. Readonly.
  /// [createdBy] The user who created the Rollout. Readonly.
  /// [deleteServiceStrategy] The strategy associated with a rollout to delete a `ManagedService`. Readonly.
  /// [rolloutId] Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where "date" is the create date in ISO 8601 format. "revision number" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is '2016-02-16r1'
  /// [serviceName] The name of the service associated with this Rollout.
  /// [trafficPercentStrategy] Google Service Control selects service configurations based on traffic percentage.
  const RolloutArgs({
    this.createTime,
    this.createdBy,
    this.deleteServiceStrategy,
    this.rolloutId,
    required this.serviceName,
    this.trafficPercentStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'createdBy': ?createdBy,
      'deleteServiceStrategy': ?deleteServiceStrategy,
      'rolloutId': ?rolloutId,
      'serviceName': serviceName,
      'trafficPercentStrategy': ?pulumi.Input.mapOptionalInputValue<TrafficPercentStrategy, Map<String, dynamic>>(trafficPercentStrategy, (value) => value.toMap()),
    };
  }

  factory RolloutArgs.fromMap(Map<String, dynamic> map) {
    return RolloutArgs(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteServiceStrategy: (() { final guardedValue = map['deleteServiceStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      rolloutId: (() { final guardedValue = map['rolloutId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      trafficPercentStrategy: (() { final guardedValue = map['trafficPercentStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPercentStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
