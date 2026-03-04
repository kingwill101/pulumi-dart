import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_indicator_response.dart';
import 'service_level_objective_args.dart';

/// Create a ServiceLevelObjective for the given Service.
/// Auto-naming is currently not supported for this resource.
class ServiceLevelObjective extends pulumi.CustomResource {
  /// A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  late final pulumi.Output<String> calendarPeriod;

  /// Name used for UI elements listing this SLO.
  late final pulumi.Output<String> displayName;

  /// The fraction of service that must be good in order for this objective to be met. 0 &lt; goal &lt;= 0.999.
  late final pulumi.Output<double> goal;

  /// Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  late final pulumi.Output<String> name;

  /// A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  late final pulumi.Output<String> rollingPeriod;
  late final pulumi.Output<String> serviceId;

  /// The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  late final pulumi.Output<ServiceLevelIndicatorResponse> serviceLevelIndicator;

  /// Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern ^[a-zA-Z0-9-_:.]+$
  late final pulumi.Output<String?> serviceLevelObjectiveId;

  /// Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  late final pulumi.Output<Map<String, String>> userLabels;
  late final pulumi.Output<String> v3Id;
  late final pulumi.Output<String> v3Id1;

  /// Creates a new [ServiceLevelObjective].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLevelObjective]. {@macro pulumi_monitoring_v3_service_level_objective_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLevelObjective(
    String name, {
    ServiceLevelObjectiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:monitoring/v3:ServiceLevelObjective',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    calendarPeriod = registerOutput<String>('calendarPeriod');
    displayName = registerOutput<String>('displayName');
    goal = registerOutput<double>('goal');
    this.name = registerOutput<String>('name');
    rollingPeriod = registerOutput<String>('rollingPeriod');
    serviceId = registerOutput<String>('serviceId');
    serviceLevelIndicator = registerOutput<ServiceLevelIndicatorResponse>(
      'serviceLevelIndicator',
    );
    serviceLevelObjectiveId = registerOutput<String?>(
      'serviceLevelObjectiveId',
    );
    userLabels = registerOutput<Map<String, String>>('userLabels');
    v3Id = registerOutput<String>('v3Id');
    v3Id1 = registerOutput<String>('v3Id1');
  }
}
