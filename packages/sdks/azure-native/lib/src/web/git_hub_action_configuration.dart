// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_action_code_configuration.dart';
import 'git_hub_action_container_configuration.dart';

/// The GitHub action configuration.
class GitHubActionConfiguration {
  /// GitHub Action code configuration.
  final pulumi.Input<GitHubActionCodeConfiguration>? codeConfiguration;
  /// GitHub Action container configuration.
  final pulumi.Input<GitHubActionContainerConfiguration>? containerConfiguration;
  /// Workflow option to determine whether the workflow file should be generated and written to the repository.
  final pulumi.Input<bool>? generateWorkflowFile;
  /// This will help determine the workflow configuration to select.
  final pulumi.Input<bool>? isLinux;

  /// Creates a new [GitHubActionConfiguration].
  /// [codeConfiguration] GitHub Action code configuration.
  /// [containerConfiguration] GitHub Action container configuration.
  /// [generateWorkflowFile] Workflow option to determine whether the workflow file should be generated and written to the repository.
  /// [isLinux] This will help determine the workflow configuration to select.
  GitHubActionConfiguration({
    this.codeConfiguration,
    this.containerConfiguration,
    this.generateWorkflowFile,
    this.isLinux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<GitHubActionCodeConfiguration, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<GitHubActionContainerConfiguration, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
      'generateWorkflowFile': ?generateWorkflowFile,
      'isLinux': ?isLinux,
    };
  }

  factory GitHubActionConfiguration.fromMap(Map<String, dynamic> map) {
    return GitHubActionConfiguration(
      codeConfiguration: map['codeConfiguration'] == null ? null : (GitHubActionCodeConfiguration.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>())).input(),
      containerConfiguration: map['containerConfiguration'] == null ? null : (GitHubActionContainerConfiguration.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>())).input(),
      generateWorkflowFile: map['generateWorkflowFile'] == null ? null : (map['generateWorkflowFile'] as bool).input(),
      isLinux: map['isLinux'] == null ? null : (map['isLinux'] as bool).input(),
    );
  }
}

