// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_event_trigger_config.dart';
import 'job_identity.dart';
import 'job_manual_trigger_config.dart';
import 'job_registry.dart';
import 'job_schedule_trigger_config.dart';
import 'job_secret.dart';
import 'job_template.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// The ID of the Container App Environment in which to create the Container App Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerAppEnvironmentId;
  /// The endpoint for the Container App Job event stream.
  final pulumi.Input<String>? eventStreamEndpoint;
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
  /// A list of the Public IP Addresses which the Container App uses for outbound network access.
  final pulumi.Input<List<String>>? outboundIpAddresses;
  /// One or more `registry` blocks as defined below.
  final pulumi.Input<List<JobRegistry>>? registries;
  /// The maximum number of times a replica is allowed to retry.
  final pulumi.Input<int>? replicaRetryLimit;
  /// The maximum number of seconds a replica is allowed to run.
  final pulumi.Input<int>? replicaTimeoutInSeconds;
  /// The name of the resource group in which to create the Container App Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `schedule_trigger_config` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `manual_trigger_config`, `event_trigger_config` or `schedule_trigger_config` can be specified.
  final pulumi.Input<JobScheduleTriggerConfig>? scheduleTriggerConfig;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<JobSecret>>? secrets;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `template` block as defined below.
  final pulumi.Input<JobTemplate>? template;
  /// The name of the workload profile to use for the Container App Job.
  final pulumi.Input<String>? workloadProfileName;

  /// Creates a new [JobState].
  /// [containerAppEnvironmentId] The ID of the Container App Environment in which to create the Container App Job. Changing this forces a new resource to be created.
  /// [eventStreamEndpoint] The endpoint for the Container App Job event stream.
  /// [eventTriggerConfig] A `event_trigger_config` block as defined below. Changing this forces a new resource to be created.
  /// [identity] A `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [manualTriggerConfig] A `manual_trigger_config` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Container App Job resource. Changing this forces a new resource to be created.
  /// [outboundIpAddresses] A list of the Public IP Addresses which the Container App uses for outbound network access.
  /// [registries] One or more `registry` blocks as defined below.
  /// [replicaRetryLimit] The maximum number of times a replica is allowed to retry.
  /// [replicaTimeoutInSeconds] The maximum number of seconds a replica is allowed to run.
  /// [resourceGroupName] The name of the resource group in which to create the Container App Job. Changing this forces a new resource to be created.
  /// [scheduleTriggerConfig] A `schedule_trigger_config` block as defined below. Changing this forces a new resource to be created.
  /// [secrets] One or more `secret` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [template] A `template` block as defined below.
  /// [workloadProfileName] The name of the workload profile to use for the Container App Job.
  JobState({
    pulumi.Output<String>? containerAppEnvironmentId,
    pulumi.Output<String>? eventStreamEndpoint,
    pulumi.Output<JobEventTriggerConfig>? eventTriggerConfig,
    pulumi.Output<JobIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<JobManualTriggerConfig>? manualTriggerConfig,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddresses,
    pulumi.Output<List<JobRegistry>>? registries,
    pulumi.Output<int>? replicaRetryLimit,
    pulumi.Output<int>? replicaTimeoutInSeconds,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<JobScheduleTriggerConfig>? scheduleTriggerConfig,
    pulumi.Output<List<JobSecret>>? secrets,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<JobTemplate>? template,
    pulumi.Output<String>? workloadProfileName,
  }) :
      containerAppEnvironmentId = pulumi.Input.asOptionalInput<String>(containerAppEnvironmentId),
      eventStreamEndpoint = pulumi.Input.asOptionalInput<String>(eventStreamEndpoint),
      eventTriggerConfig = pulumi.Input.asOptionalInput<JobEventTriggerConfig>(eventTriggerConfig),
      identity = pulumi.Input.asOptionalInput<JobIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      manualTriggerConfig = pulumi.Input.asOptionalInput<JobManualTriggerConfig>(manualTriggerConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddresses),
      registries = pulumi.Input.asOptionalInput<List<JobRegistry>>(registries),
      replicaRetryLimit = pulumi.Input.asOptionalInput<int>(replicaRetryLimit),
      replicaTimeoutInSeconds = pulumi.Input.asOptionalInput<int>(replicaTimeoutInSeconds),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scheduleTriggerConfig = pulumi.Input.asOptionalInput<JobScheduleTriggerConfig>(scheduleTriggerConfig),
      secrets = pulumi.Input.asOptionalInput<List<JobSecret>>(secrets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      template = pulumi.Input.asOptionalInput<JobTemplate>(template),
      workloadProfileName = pulumi.Input.asOptionalInput<String>(workloadProfileName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'eventStreamEndpoint': ?eventStreamEndpoint,
      'eventTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobEventTriggerConfig, Map<String, dynamic>>(eventTriggerConfig, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<JobIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'manualTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobManualTriggerConfig, Map<String, dynamic>>(manualTriggerConfig, (value) => value.toMap()),
      'name': ?name,
      'outboundIpAddresses': ?outboundIpAddresses,
      'registries': ?pulumi.Input.mapOptionalInputValue<List<JobRegistry>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<JobRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaRetryLimit': ?replicaRetryLimit,
      'replicaTimeoutInSeconds': ?replicaTimeoutInSeconds,
      'resourceGroupName': ?resourceGroupName,
      'scheduleTriggerConfig': ?pulumi.Input.mapOptionalInputValue<JobScheduleTriggerConfig, Map<String, dynamic>>(scheduleTriggerConfig, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<JobSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<JobSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'template': ?pulumi.Input.mapOptionalInputValue<JobTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['containerAppEnvironmentId'] as String),
      eventStreamEndpoint: map['eventStreamEndpoint'] == null ? null : pulumi.Output.create<String>(map['eventStreamEndpoint'] as String),
      eventTriggerConfig: map['eventTriggerConfig'] == null ? null : pulumi.Output.create<JobEventTriggerConfig>(JobEventTriggerConfig.fromMap((map['eventTriggerConfig'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<JobIdentity>(JobIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      manualTriggerConfig: map['manualTriggerConfig'] == null ? null : pulumi.Output.create<JobManualTriggerConfig>(JobManualTriggerConfig.fromMap((map['manualTriggerConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddresses'] as List).cast<String>()),
      registries: map['registries'] == null ? null : pulumi.Output.create<List<JobRegistry>>(pulumi.Input.decodeList<JobRegistry>(map['registries'], (value) => JobRegistry.fromMap((value as Map).cast<String, dynamic>()))),
      replicaRetryLimit: map['replicaRetryLimit'] == null ? null : pulumi.Output.create<int>(map['replicaRetryLimit'] as int),
      replicaTimeoutInSeconds: map['replicaTimeoutInSeconds'] == null ? null : pulumi.Output.create<int>(map['replicaTimeoutInSeconds'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduleTriggerConfig: map['scheduleTriggerConfig'] == null ? null : pulumi.Output.create<JobScheduleTriggerConfig>(JobScheduleTriggerConfig.fromMap((map['scheduleTriggerConfig'] as Map).cast<String, dynamic>())),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<List<JobSecret>>(pulumi.Input.decodeList<JobSecret>(map['secrets'], (value) => JobSecret.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      template: map['template'] == null ? null : pulumi.Output.create<JobTemplate>(JobTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())),
      workloadProfileName: map['workloadProfileName'] == null ? null : pulumi.Output.create<String>(map['workloadProfileName'] as String),
    );
  }
}

