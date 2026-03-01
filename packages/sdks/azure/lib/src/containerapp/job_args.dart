// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_event_trigger_config.dart';
import 'job_identity.dart';
import 'job_manual_trigger_config.dart';
import 'job_registry.dart';
import 'job_schedule_trigger_config.dart';
import 'job_secret.dart';
import 'job_template.dart';

/// {@template pulumi_containerapp_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_containerapp_job_job_args_doc}
class JobArgs {
  /// The ID of the Container App Environment in which to create the Container App Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// A `event_trigger_config` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<JobEventTriggerConfig>? eventTriggerConfig;
  /// A `identity` block as defined below.
  final pulumi.Input<JobIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `manual_trigger_config` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<JobManualTriggerConfig>? manualTriggerConfig;
  /// Specifies the name of the Container App Job resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `registry` blocks as defined below.
  final pulumi.Input<List<JobRegistry>>? registries;
  /// The maximum number of times a replica is allowed to retry.
  final pulumi.Input<int>? replicaRetryLimit;
  /// The maximum number of seconds a replica is allowed to run.
  final pulumi.Input<int> replicaTimeoutInSeconds;
  /// The name of the resource group in which to create the Container App Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `schedule_trigger_config` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `manual_trigger_config`, `event_trigger_config` or `schedule_trigger_config` can be specified.
  final pulumi.Input<JobScheduleTriggerConfig>? scheduleTriggerConfig;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<JobSecret>>? secrets;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `template` block as defined below.
  final pulumi.Input<JobTemplate> template;
  /// The name of the workload profile to use for the Container App Job.
  final pulumi.Input<String>? workloadProfileName;

  /// Creates a new [JobArgs].
  /// [containerAppEnvironmentId] The ID of the Container App Environment in which to create the Container App Job. Changing this forces a new resource to be created.
  /// [eventTriggerConfig] A `event_trigger_config` block as defined below. Changing this forces a new resource to be created.
  /// [identity] A `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [manualTriggerConfig] A `manual_trigger_config` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Container App Job resource. Changing this forces a new resource to be created.
  /// [registries] One or more `registry` blocks as defined below.
  /// [replicaRetryLimit] The maximum number of times a replica is allowed to retry.
  /// [replicaTimeoutInSeconds] The maximum number of seconds a replica is allowed to run.
  /// [resourceGroupName] The name of the resource group in which to create the Container App Job. Changing this forces a new resource to be created.
  /// [scheduleTriggerConfig] A `schedule_trigger_config` block as defined below. Changing this forces a new resource to be created.
  /// [secrets] One or more `secret` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [template] A `template` block as defined below.
  /// [workloadProfileName] The name of the workload profile to use for the Container App Job.
  JobArgs({
    required pulumi.Output<String> containerAppEnvironmentId,
    pulumi.Output<JobEventTriggerConfig>? eventTriggerConfig,
    pulumi.Output<JobIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<JobManualTriggerConfig>? manualTriggerConfig,
    pulumi.Output<String>? name,
    pulumi.Output<List<JobRegistry>>? registries,
    pulumi.Output<int>? replicaRetryLimit,
    required pulumi.Output<int> replicaTimeoutInSeconds,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<JobScheduleTriggerConfig>? scheduleTriggerConfig,
    pulumi.Output<List<JobSecret>>? secrets,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<JobTemplate> template,
    pulumi.Output<String>? workloadProfileName,
  }) :
      containerAppEnvironmentId = pulumi.Input.asInput<String>(containerAppEnvironmentId),
      eventTriggerConfig = pulumi.Input.asOptionalInput<JobEventTriggerConfig>(eventTriggerConfig),
      identity = pulumi.Input.asOptionalInput<JobIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      manualTriggerConfig = pulumi.Input.asOptionalInput<JobManualTriggerConfig>(manualTriggerConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      registries = pulumi.Input.asOptionalInput<List<JobRegistry>>(registries),
      replicaRetryLimit = pulumi.Input.asOptionalInput<int>(replicaRetryLimit),
      replicaTimeoutInSeconds = pulumi.Input.asInput<int>(replicaTimeoutInSeconds),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleTriggerConfig = pulumi.Input.asOptionalInput<JobScheduleTriggerConfig>(scheduleTriggerConfig),
      secrets = pulumi.Input.asOptionalInput<List<JobSecret>>(secrets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      template = pulumi.Input.asInput<JobTemplate>(template),
      workloadProfileName = pulumi.Input.asOptionalInput<String>(workloadProfileName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'eventTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobEventTriggerConfig, Map<String, dynamic>>(eventTriggerConfig, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<JobIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'manualTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobManualTriggerConfig, Map<String, dynamic>>(manualTriggerConfig, (value) => value.toMap()),
      'name': ?name,
      'registries': ?pulumi.Input.mapOptionalInputValue<List<JobRegistry>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<JobRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaRetryLimit': ?replicaRetryLimit,
      'replicaTimeoutInSeconds': replicaTimeoutInSeconds,
      'resourceGroupName': resourceGroupName,
      'scheduleTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobScheduleTriggerConfig, Map<String, dynamic>>(scheduleTriggerConfig, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<JobSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<JobSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'template': pulumi.Input.mapInputValue<JobTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      containerAppEnvironmentId: pulumi.Output.create<String>(map['containerAppEnvironmentId'] as String),
      eventTriggerConfig: map['eventTriggerConfig'] == null ? null : pulumi.Output.create<JobEventTriggerConfig>(JobEventTriggerConfig.fromMap((map['eventTriggerConfig'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<JobIdentity>(JobIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      manualTriggerConfig: map['manualTriggerConfig'] == null ? null : pulumi.Output.create<JobManualTriggerConfig>(JobManualTriggerConfig.fromMap((map['manualTriggerConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      registries: map['registries'] == null ? null : pulumi.Output.create<List<JobRegistry>>(pulumi.Input.decodeList<JobRegistry>(map['registries'], (value) => JobRegistry.fromMap((value as Map).cast<String, dynamic>()))),
      replicaRetryLimit: map['replicaRetryLimit'] == null ? null : pulumi.Output.create<int>(map['replicaRetryLimit'] as int),
      replicaTimeoutInSeconds: pulumi.Output.create<int>(map['replicaTimeoutInSeconds'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduleTriggerConfig: map['scheduleTriggerConfig'] == null ? null : pulumi.Output.create<JobScheduleTriggerConfig>(JobScheduleTriggerConfig.fromMap((map['scheduleTriggerConfig'] as Map).cast<String, dynamic>())),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<List<JobSecret>>(pulumi.Input.decodeList<JobSecret>(map['secrets'], (value) => JobSecret.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      template: pulumi.Output.create<JobTemplate>(JobTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())),
      workloadProfileName: map['workloadProfileName'] == null ? null : pulumi.Output.create<String>(map['workloadProfileName'] as String),
    );
  }
}

