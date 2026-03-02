// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_slot_github_action_configuration_code_configuration.dart';
import 'source_control_slot_github_action_configuration_container_configuration.dart';

class SourceControlSlotGithubActionConfiguration {
  /// A `code_configuration` block as detailed below. Changing this forces a new resource to be created.
  final pulumi.Input<SourceControlSlotGithubActionConfigurationCodeConfiguration>? codeConfiguration;
  /// A `container_configuration` block as detailed below.
  final pulumi.Input<SourceControlSlotGithubActionConfigurationContainerConfiguration>? containerConfiguration;
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
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlSlotGithubActionConfigurationCodeConfiguration, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlSlotGithubActionConfigurationContainerConfiguration, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
      'generateWorkflowFile': ?generateWorkflowFile,
      'linuxAction': ?linuxAction,
    };
  }

  factory SourceControlSlotGithubActionConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlSlotGithubActionConfiguration(
      codeConfiguration: map['codeConfiguration'] == null ? null : (SourceControlSlotGithubActionConfigurationCodeConfiguration.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>())).input(),
      containerConfiguration: map['containerConfiguration'] == null ? null : (SourceControlSlotGithubActionConfigurationContainerConfiguration.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>())).input(),
      generateWorkflowFile: map['generateWorkflowFile'] == null ? null : (map['generateWorkflowFile'] as bool).input(),
      linuxAction: map['linuxAction'] == null ? null : (map['linuxAction'] as bool).input(),
    );
  }
}

