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
  /// &gt; **Note:** Only one of `manual_trigger_config`, `event_trigger_config` or `schedule_trigger_config` can be specified.
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
    required this.containerAppEnvironmentId,
    this.eventTriggerConfig,
    this.identity,
    this.location,
    this.manualTriggerConfig,
    this.name,
    this.registries,
    this.replicaRetryLimit,
    required this.replicaTimeoutInSeconds,
    required this.resourceGroupName,
    this.scheduleTriggerConfig,
    this.secrets,
    this.tags,
    required this.template,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'eventTriggerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            JobEventTriggerConfig,
            Map<String, dynamic>
          >(eventTriggerConfig, (value) => value.toMap()),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            JobIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'manualTriggerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            JobManualTriggerConfig,
            Map<String, dynamic>
          >(manualTriggerConfig, (value) => value.toMap()),
      'name': ?name,
      'registries':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobRegistry>,
            List<Map<String, dynamic>>
          >(
            registries,
            (value) =>
                pulumi.Input.encodeList<JobRegistry, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'replicaRetryLimit': ?replicaRetryLimit,
      'replicaTimeoutInSeconds': replicaTimeoutInSeconds,
      'resourceGroupName': resourceGroupName,
      'scheduleTriggerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            JobScheduleTriggerConfig,
            Map<String, dynamic>
          >(scheduleTriggerConfig, (value) => value.toMap()),
      'secrets':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobSecret>,
            List<Map<String, dynamic>>
          >(
            secrets,
            (value) => pulumi.Input.encodeList<JobSecret, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'tags': ?tags,
      'template': pulumi.Input.mapInputValue<JobTemplate, Map<String, dynamic>>(
        template,
        (value) => value.toMap(),
      ),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      containerAppEnvironmentId: pulumi.Input.fromValue(
        map['containerAppEnvironmentId'] as String,
      ),
      eventTriggerConfig: (() {
        final guardedValue = map['eventTriggerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobEventTriggerConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manualTriggerConfig: (() {
        final guardedValue = map['manualTriggerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobManualTriggerConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registries: (() {
        final guardedValue = map['registries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JobRegistry>(
            guardedValue,
            (value) =>
                JobRegistry.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      replicaRetryLimit: (() {
        final guardedValue = map['replicaRetryLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      replicaTimeoutInSeconds: pulumi.Input.fromValue(
        map['replicaTimeoutInSeconds'] as int,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      scheduleTriggerConfig: (() {
        final guardedValue = map['scheduleTriggerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobScheduleTriggerConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secrets: (() {
        final guardedValue = map['secrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JobSecret>(
            guardedValue,
            (value) =>
                JobSecret.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      template: pulumi.Input.fromValue(
        JobTemplate.fromMap((map['template']! as Map).cast<String, dynamic>()),
      ),
      workloadProfileName: (() {
        final guardedValue = map['workloadProfileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
