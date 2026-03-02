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
    this.containerAppEnvironmentId,
    this.eventStreamEndpoint,
    this.eventTriggerConfig,
    this.identity,
    this.location,
    this.manualTriggerConfig,
    this.name,
    this.outboundIpAddresses,
    this.registries,
    this.replicaRetryLimit,
    this.replicaTimeoutInSeconds,
    this.resourceGroupName,
    this.scheduleTriggerConfig,
    this.secrets,
    this.tags,
    this.template,
    this.workloadProfileName,
  });

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
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : (map['containerAppEnvironmentId']! as String).input(),
      eventStreamEndpoint: map['eventStreamEndpoint'] == null ? null : (map['eventStreamEndpoint']! as String).input(),
      eventTriggerConfig: map['eventTriggerConfig'] == null ? null : (JobEventTriggerConfig.fromMap((map['eventTriggerConfig']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (JobIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      manualTriggerConfig: map['manualTriggerConfig'] == null ? null : (JobManualTriggerConfig.fromMap((map['manualTriggerConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : ((map['outboundIpAddresses']! as List).cast<String>()).input(),
      registries: map['registries'] == null ? null : (pulumi.Input.decodeList<JobRegistry>(map['registries']!, (value) => JobRegistry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicaRetryLimit: map['replicaRetryLimit'] == null ? null : (map['replicaRetryLimit']! as int).input(),
      replicaTimeoutInSeconds: map['replicaTimeoutInSeconds'] == null ? null : (map['replicaTimeoutInSeconds']! as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      scheduleTriggerConfig: map['scheduleTriggerConfig'] == null ? null : (JobScheduleTriggerConfig.fromMap((map['scheduleTriggerConfig']! as Map).cast<String, dynamic>())).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<JobSecret>(map['secrets']!, (value) => JobSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      template: map['template'] == null ? null : (JobTemplate.fromMap((map['template']! as Map).cast<String, dynamic>())).input(),
      workloadProfileName: map['workloadProfileName'] == null ? null : (map['workloadProfileName']! as String).input(),
    );
  }
}

