// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_slot_github_action_configuration_code_configuration.dart';
import 'source_control_slot_github_action_configuration_container_configuration.dart';

class SourceControlSlotGithubActionConfiguration {
  /// A `code_configuration` block as detailed below. Changing this forces a new resource to be created.
  final pulumi.Input<
    SourceControlSlotGithubActionConfigurationCodeConfiguration
  >?
  codeConfiguration;

  /// A `container_configuration` block as detailed below.
  final pulumi.Input<
    SourceControlSlotGithubActionConfigurationContainerConfiguration
  >?
  containerConfiguration;

  /// Should the service generate the GitHub Action Workflow file. Defaults to `true` Changing this forces a new resource to be created.
  final pulumi.Input<bool>? generateWorkflowFile;

  /// Denotes this action uses a Linux base image.
  final pulumi.Input<bool>? linuxAction;

  /// Creates a new [SourceControlSlotGithubActionConfiguration].
  /// [codeConfiguration] A `code_configuration` block as detailed below. Changing this forces a new resource to be created.
  /// [containerConfiguration] A `container_configuration` block as detailed below.
  /// [generateWorkflowFile] Should the service generate the GitHub Action Workflow file. Defaults to `true` Changing this forces a new resource to be created.
  /// [linuxAction] Denotes this action uses a Linux base image.
  SourceControlSlotGithubActionConfiguration({
    this.codeConfiguration,
    this.containerConfiguration,
    this.generateWorkflowFile,
    this.linuxAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            SourceControlSlotGithubActionConfigurationCodeConfiguration,
            Map<String, dynamic>
          >(codeConfiguration, (value) => value.toMap()),
      'containerConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            SourceControlSlotGithubActionConfigurationContainerConfiguration,
            Map<String, dynamic>
          >(containerConfiguration, (value) => value.toMap()),
      'generateWorkflowFile': ?generateWorkflowFile,
      'linuxAction': ?linuxAction,
    };
  }

  factory SourceControlSlotGithubActionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceControlSlotGithubActionConfiguration(
      codeConfiguration: (() {
        final guardedValue = map['codeConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SourceControlSlotGithubActionConfigurationCodeConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      containerConfiguration: (() {
        final guardedValue = map['containerConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SourceControlSlotGithubActionConfigurationContainerConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      generateWorkflowFile: (() {
        final guardedValue = map['generateWorkflowFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      linuxAction: (() {
        final guardedValue = map['linuxAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
