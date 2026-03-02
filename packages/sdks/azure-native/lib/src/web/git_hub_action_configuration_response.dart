// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_action_code_configuration_response.dart';
import 'git_hub_action_container_configuration_response.dart';

/// The GitHub action configuration.
class GitHubActionConfigurationResponse {
  /// GitHub Action code configuration.
  final pulumi.Input<GitHubActionCodeConfigurationResponse>? codeConfiguration;
  /// GitHub Action container configuration.
  final pulumi.Input<GitHubActionContainerConfigurationResponse>? containerConfiguration;
  /// Workflow option to determine whether the workflow file should be generated and written to the repository.
  final pulumi.Input<bool>? generateWorkflowFile;
  /// This will help determine the workflow configuration to select.
  final pulumi.Input<bool>? isLinux;

  /// Creates a new [GitHubActionConfigurationResponse].
  /// [codeConfiguration] GitHub Action code configuration.
  /// [containerConfiguration] GitHub Action container configuration.
  /// [generateWorkflowFile] Workflow option to determine whether the workflow file should be generated and written to the repository.
  /// [isLinux] This will help determine the workflow configuration to select.
  GitHubActionConfigurationResponse({
    this.codeConfiguration,
    this.containerConfiguration,
    this.generateWorkflowFile,
    this.isLinux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<GitHubActionCodeConfigurationResponse, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<GitHubActionContainerConfigurationResponse, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
      'generateWorkflowFile': ?generateWorkflowFile,
      'isLinux': ?isLinux,
    };
  }

  factory GitHubActionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GitHubActionConfigurationResponse(
      codeConfiguration: map['codeConfiguration'] == null ? null : (GitHubActionCodeConfigurationResponse.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>())).input(),
      containerConfiguration: map['containerConfiguration'] == null ? null : (GitHubActionContainerConfigurationResponse.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>())).input(),
      generateWorkflowFile: map['generateWorkflowFile'] == null ? null : (map['generateWorkflowFile'] as bool).input(),
      isLinux: map['isLinux'] == null ? null : (map['isLinux'] as bool).input(),
    );
  }
}

