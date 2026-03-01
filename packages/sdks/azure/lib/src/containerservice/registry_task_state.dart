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
  /// > **Note:** Only one of `agent_pool_name` and `agent_setting` can be specified.
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
  /// > **Note:** For non-system task (when `is_system_task` is set to `false`), one and only one of the `docker_step`, `encoded_step` and `file_step` should be specified.
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
  /// > **Note:** The `platform` is required for non-system task (when `is_system_task` is set to `false`).
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
    pulumi.Output<String>? agentPoolName,
    pulumi.Output<RegistryTaskAgentSetting>? agentSetting,
    pulumi.Output<RegistryTaskBaseImageTrigger>? baseImageTrigger,
    pulumi.Output<String>? containerRegistryId,
    pulumi.Output<RegistryTaskDockerStep>? dockerStep,
    pulumi.Output<bool>? enabled,
    pulumi.Output<RegistryTaskEncodedStep>? encodedStep,
    pulumi.Output<RegistryTaskFileStep>? fileStep,
    pulumi.Output<RegistryTaskIdentity>? identity,
    pulumi.Output<bool>? isSystemTask,
    pulumi.Output<String>? logTemplate,
    pulumi.Output<String>? name,
    pulumi.Output<RegistryTaskPlatform>? platform,
    pulumi.Output<RegistryTaskRegistryCredential>? registryCredential,
    pulumi.Output<List<RegistryTaskSourceTrigger>>? sourceTriggers,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? timeoutInSeconds,
    pulumi.Output<List<RegistryTaskTimerTrigger>>? timerTriggers,
  }) :
      agentPoolName = pulumi.Input.asOptionalInput<String>(agentPoolName),
      agentSetting = pulumi.Input.asOptionalInput<RegistryTaskAgentSetting>(agentSetting),
      baseImageTrigger = pulumi.Input.asOptionalInput<RegistryTaskBaseImageTrigger>(baseImageTrigger),
      containerRegistryId = pulumi.Input.asOptionalInput<String>(containerRegistryId),
      dockerStep = pulumi.Input.asOptionalInput<RegistryTaskDockerStep>(dockerStep),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      encodedStep = pulumi.Input.asOptionalInput<RegistryTaskEncodedStep>(encodedStep),
      fileStep = pulumi.Input.asOptionalInput<RegistryTaskFileStep>(fileStep),
      identity = pulumi.Input.asOptionalInput<RegistryTaskIdentity>(identity),
      isSystemTask = pulumi.Input.asOptionalInput<bool>(isSystemTask),
      logTemplate = pulumi.Input.asOptionalInput<String>(logTemplate),
      name = pulumi.Input.asOptionalInput<String>(name),
      platform = pulumi.Input.asOptionalInput<RegistryTaskPlatform>(platform),
      registryCredential = pulumi.Input.asOptionalInput<RegistryTaskRegistryCredential>(registryCredential),
      sourceTriggers = pulumi.Input.asOptionalInput<List<RegistryTaskSourceTrigger>>(sourceTriggers),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeoutInSeconds = pulumi.Input.asOptionalInput<int>(timeoutInSeconds),
      timerTriggers = pulumi.Input.asOptionalInput<List<RegistryTaskTimerTrigger>>(timerTriggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': ?agentPoolName,
      'agentSetting': ?pulumi.Input.mapOptionalInputValue<RegistryTaskAgentSetting, Map<String, dynamic>>(agentSetting, (value) => value.toMap()),
      'baseImageTrigger': ?pulumi.Input.mapOptionalInputValue<RegistryTaskBaseImageTrigger, Map<String, dynamic>>(baseImageTrigger, (value) => value.toMap()),
      'containerRegistryId': ?containerRegistryId,
      'dockerStep': ?pulumi.Input.mapOptionalInputValue<RegistryTaskDockerStep, Map<String, dynamic>>(dockerStep, (value) => value.toMap()),
      'enabled': ?enabled,
      'encodedStep': ?pulumi.Input.mapOptionalInputValue<RegistryTaskEncodedStep, Map<String, dynamic>>(encodedStep, (value) => value.toMap()),
      'fileStep': ?pulumi.Input.mapOptionalInputValue<RegistryTaskFileStep, Map<String, dynamic>>(fileStep, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<RegistryTaskIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isSystemTask': ?isSystemTask,
      'logTemplate': ?logTemplate,
      'name': ?name,
      'platform': ?pulumi.Input.mapOptionalInputValue<RegistryTaskPlatform, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'registryCredential': ?pulumi.Input.mapOptionalInputValue<RegistryTaskRegistryCredential, Map<String, dynamic>>(registryCredential, (value) => value.toMap()),
      'sourceTriggers': ?pulumi.Input.mapOptionalInputValue<List<RegistryTaskSourceTrigger>, List<Map<String, dynamic>>>(sourceTriggers, (value) => pulumi.Input.encodeList<RegistryTaskSourceTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeoutInSeconds': ?timeoutInSeconds,
      'timerTriggers': ?pulumi.Input.mapOptionalInputValue<List<RegistryTaskTimerTrigger>, List<Map<String, dynamic>>>(timerTriggers, (value) => pulumi.Input.encodeList<RegistryTaskTimerTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegistryTaskState.fromMap(Map<String, dynamic> map) {
    return RegistryTaskState(
      agentPoolName: map['agentPoolName'] == null ? null : pulumi.Output.create<String>(map['agentPoolName'] as String),
      agentSetting: map['agentSetting'] == null ? null : pulumi.Output.create<RegistryTaskAgentSetting>(RegistryTaskAgentSetting.fromMap((map['agentSetting'] as Map).cast<String, dynamic>())),
      baseImageTrigger: map['baseImageTrigger'] == null ? null : pulumi.Output.create<RegistryTaskBaseImageTrigger>(RegistryTaskBaseImageTrigger.fromMap((map['baseImageTrigger'] as Map).cast<String, dynamic>())),
      containerRegistryId: map['containerRegistryId'] == null ? null : pulumi.Output.create<String>(map['containerRegistryId'] as String),
      dockerStep: map['dockerStep'] == null ? null : pulumi.Output.create<RegistryTaskDockerStep>(RegistryTaskDockerStep.fromMap((map['dockerStep'] as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      encodedStep: map['encodedStep'] == null ? null : pulumi.Output.create<RegistryTaskEncodedStep>(RegistryTaskEncodedStep.fromMap((map['encodedStep'] as Map).cast<String, dynamic>())),
      fileStep: map['fileStep'] == null ? null : pulumi.Output.create<RegistryTaskFileStep>(RegistryTaskFileStep.fromMap((map['fileStep'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<RegistryTaskIdentity>(RegistryTaskIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      isSystemTask: map['isSystemTask'] == null ? null : pulumi.Output.create<bool>(map['isSystemTask'] as bool),
      logTemplate: map['logTemplate'] == null ? null : pulumi.Output.create<String>(map['logTemplate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<RegistryTaskPlatform>(RegistryTaskPlatform.fromMap((map['platform'] as Map).cast<String, dynamic>())),
      registryCredential: map['registryCredential'] == null ? null : pulumi.Output.create<RegistryTaskRegistryCredential>(RegistryTaskRegistryCredential.fromMap((map['registryCredential'] as Map).cast<String, dynamic>())),
      sourceTriggers: map['sourceTriggers'] == null ? null : pulumi.Output.create<List<RegistryTaskSourceTrigger>>(pulumi.Input.decodeList<RegistryTaskSourceTrigger>(map['sourceTriggers'], (value) => RegistryTaskSourceTrigger.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : pulumi.Output.create<int>(map['timeoutInSeconds'] as int),
      timerTriggers: map['timerTriggers'] == null ? null : pulumi.Output.create<List<RegistryTaskTimerTrigger>>(pulumi.Input.decodeList<RegistryTaskTimerTrigger>(map['timerTriggers'], (value) => RegistryTaskTimerTrigger.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

