// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_task_agent_setting.dart';
import 'registry_task_base_image_trigger.dart';
import 'registry_task_docker_step.dart';
import 'registry_task_encoded_step.dart';
import 'registry_task_file_step.dart';
import 'registry_task_identity.dart';
import 'registry_task_platform.dart';
import 'registry_task_registry_credential.dart';
import 'registry_task_source_trigger.dart';
import 'registry_task_timer_trigger.dart';

/// Input properties used for looking up and filtering RegistryTask resources.
class RegistryTaskState {
  /// The name of the dedicated Container Registry Agent Pool for this Container Registry Task.
  final pulumi.Input<String>? agentPoolName;

  /// A `agent_setting` block as defined below.
  ///
  /// &gt; **Note:** Only one of `agent_pool_name` and `agent_setting` can be specified.
  final pulumi.Input<RegistryTaskAgentSetting>? agentSetting;

  /// A `base_image_trigger` block as defined below.
  final pulumi.Input<RegistryTaskBaseImageTrigger>? baseImageTrigger;

  /// The ID of the Container Registry that this Container Registry Task resides in. Changing this forces a new Container Registry Task to be created.
  final pulumi.Input<String>? containerRegistryId;

  /// A `docker_step` block as defined below.
  final pulumi.Input<RegistryTaskDockerStep>? dockerStep;

  /// Should this Container Registry Task be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// A `encoded_step` block as defined below.
  final pulumi.Input<RegistryTaskEncodedStep>? encodedStep;

  /// A `file_step` block as defined below.
  ///
  /// &gt; **Note:** For non-system task (when `is_system_task` is set to `false`), one and only one of the `docker_step`, `encoded_step` and `file_step` should be specified.
  final pulumi.Input<RegistryTaskFileStep>? fileStep;

  /// An `identity` block as defined below.
  final pulumi.Input<RegistryTaskIdentity>? identity;

  /// Whether this Container Registry Task is a system task. Changing this forces a new Container Registry Task to be created. Defaults to `false`.
  final pulumi.Input<bool>? isSystemTask;
  final pulumi.Input<String>? logTemplate;

  /// The name which should be used for this Container Registry Task. Changing this forces a new Container Registry Task to be created.
  final pulumi.Input<String>? name;

  /// A `platform` block as defined below.
  ///
  /// &gt; **Note:** The `platform` is required for non-system task (when `is_system_task` is set to `false`).
  final pulumi.Input<RegistryTaskPlatform>? platform;
  final pulumi.Input<RegistryTaskRegistryCredential>? registryCredential;

  /// One or more `source_trigger` blocks as defined below.
  final pulumi.Input<List<RegistryTaskSourceTrigger>>? sourceTriggers;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<int>? timeoutInSeconds;

  /// One or more `timer_trigger` blocks as defined below.
  final pulumi.Input<List<RegistryTaskTimerTrigger>>? timerTriggers;

  /// Creates a new [RegistryTaskState].
  /// [agentPoolName] The name of the dedicated Container Registry Agent Pool for this Container Registry Task.
  /// [agentSetting] A `agent_setting` block as defined below.
  /// [baseImageTrigger] A `base_image_trigger` block as defined below.
  /// [containerRegistryId] The ID of the Container Registry that this Container Registry Task resides in. Changing this forces a new Container Registry Task to be created.
  /// [dockerStep] A `docker_step` block as defined below.
  /// [enabled] Should this Container Registry Task be enabled? Defaults to `true`.
  /// [encodedStep] A `encoded_step` block as defined below.
  /// [fileStep] A `file_step` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [isSystemTask] Whether this Container Registry Task is a system task. Changing this forces a new Container Registry Task to be created. Defaults to `false`.
  /// [logTemplate] Optional.
  /// [name] The name which should be used for this Container Registry Task. Changing this forces a new Container Registry Task to be created.
  /// [platform] A `platform` block as defined below.
  /// [registryCredential] Optional.
  /// [sourceTriggers] One or more `source_trigger` blocks as defined below.
  /// [tags] Optional.
  /// [timeoutInSeconds] Optional.
  /// [timerTriggers] One or more `timer_trigger` blocks as defined below.
  RegistryTaskState({
    this.agentPoolName,
    this.agentSetting,
    this.baseImageTrigger,
    this.containerRegistryId,
    this.dockerStep,
    this.enabled,
    this.encodedStep,
    this.fileStep,
    this.identity,
    this.isSystemTask,
    this.logTemplate,
    this.name,
    this.platform,
    this.registryCredential,
    this.sourceTriggers,
    this.tags,
    this.timeoutInSeconds,
    this.timerTriggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': ?agentPoolName,
      'agentSetting':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskAgentSetting,
            Map<String, dynamic>
          >(agentSetting, (value) => value.toMap()),
      'baseImageTrigger':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskBaseImageTrigger,
            Map<String, dynamic>
          >(baseImageTrigger, (value) => value.toMap()),
      'containerRegistryId': ?containerRegistryId,
      'dockerStep':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskDockerStep,
            Map<String, dynamic>
          >(dockerStep, (value) => value.toMap()),
      'enabled': ?enabled,
      'encodedStep':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskEncodedStep,
            Map<String, dynamic>
          >(encodedStep, (value) => value.toMap()),
      'fileStep':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskFileStep,
            Map<String, dynamic>
          >(fileStep, (value) => value.toMap()),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'isSystemTask': ?isSystemTask,
      'logTemplate': ?logTemplate,
      'name': ?name,
      'platform':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskPlatform,
            Map<String, dynamic>
          >(platform, (value) => value.toMap()),
      'registryCredential':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskRegistryCredential,
            Map<String, dynamic>
          >(registryCredential, (value) => value.toMap()),
      'sourceTriggers':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistryTaskSourceTrigger>,
            List<Map<String, dynamic>>
          >(
            sourceTriggers,
            (value) =>
                pulumi.Input.encodeList<
                  RegistryTaskSourceTrigger,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'timeoutInSeconds': ?timeoutInSeconds,
      'timerTriggers':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistryTaskTimerTrigger>,
            List<Map<String, dynamic>>
          >(
            timerTriggers,
            (value) =>
                pulumi.Input.encodeList<
                  RegistryTaskTimerTrigger,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RegistryTaskState.fromMap(Map<String, dynamic> map) {
    return RegistryTaskState(
      agentPoolName: (() {
        final guardedValue = map['agentPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      agentSetting: (() {
        final guardedValue = map['agentSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskAgentSetting.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      baseImageTrigger: (() {
        final guardedValue = map['baseImageTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskBaseImageTrigger.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      containerRegistryId: (() {
        final guardedValue = map['containerRegistryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerStep: (() {
        final guardedValue = map['dockerStep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskDockerStep.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encodedStep: (() {
        final guardedValue = map['encodedStep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskEncodedStep.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fileStep: (() {
        final guardedValue = map['fileStep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskFileStep.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isSystemTask: (() {
        final guardedValue = map['isSystemTask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logTemplate: (() {
        final guardedValue = map['logTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskPlatform.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      registryCredential: (() {
        final guardedValue = map['registryCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskRegistryCredential.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceTriggers: (() {
        final guardedValue = map['sourceTriggers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistryTaskSourceTrigger>(
            guardedValue,
            (value) => RegistryTaskSourceTrigger.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
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
      timeoutInSeconds: (() {
        final guardedValue = map['timeoutInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timerTriggers: (() {
        final guardedValue = map['timerTriggers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistryTaskTimerTrigger>(
            guardedValue,
            (value) => RegistryTaskTimerTrigger.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
