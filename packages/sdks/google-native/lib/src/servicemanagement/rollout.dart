import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_args.dart';
import 'traffic_percent_strategy_response.dart';

/// Creates a new service configuration rollout. Based on rollout, the Google Service Management will roll out the service configurations to different backend services. For example, the logging configuration will be pushed to Google Cloud Logging. Please note that any previous pending and running Rollouts and associated Operations will be automatically cancelled so that the latest Rollout will not be blocked by previous Rollouts. Only the 100 most recent (in any state) and the last 10 successful (if not already part of the set of 100 most recent) rollouts are kept for each service. The rest will be deleted eventually. Operation
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Rollout extends pulumi.CustomResource {
  /// Creation time of the rollout. Readonly.
  late final pulumi.Output<String> createTime;

  /// The user who created the Rollout. Readonly.
  late final pulumi.Output<String> createdBy;

  /// The strategy associated with a rollout to delete a `ManagedService`. Readonly.
  late final pulumi.Output<Map<String, dynamic>> deleteServiceStrategy;

  /// Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where "date" is the create date in ISO 8601 format. "revision number" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is '2016-02-16r1'
  late final pulumi.Output<String> rolloutId;
  late final pulumi.Output<String> serviceName;

  /// The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly.
  late final pulumi.Output<String> status;

  /// Google Service Control selects service configurations based on traffic percentage.
  late final pulumi.Output<TrafficPercentStrategyResponse>
  trafficPercentStrategy;

  /// Creates a new [Rollout].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rollout]. {@macro pulumi_servicemanagement_v1_rollout_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rollout(
    String name, {
    RolloutArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:servicemanagement/v1:Rollout',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    createdBy = registerOutput<String>('createdBy');
    deleteServiceStrategy = registerOutput<Map<String, dynamic>>(
      'deleteServiceStrategy',
    );
    rolloutId = registerOutput<String>('rolloutId');
    serviceName = registerOutput<String>('serviceName');
    status = registerOutput<String>('status');
    trafficPercentStrategy = registerOutput<TrafficPercentStrategyResponse>(
      'trafficPercentStrategy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TrafficPercentStrategyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
