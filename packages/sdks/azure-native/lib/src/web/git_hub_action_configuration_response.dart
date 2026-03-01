// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_action_code_configuration_response.dart';
import 'git_hub_action_container_configuration_response.dart';

/// The GitHub action configuration.
class GitHubActionConfigurationResponse {
  /// GitHub Action code configuration.
  final GitHubActionCodeConfigurationResponse? codeConfiguration;
  /// GitHub Action container configuration.
  final GitHubActionContainerConfigurationResponse? containerConfiguration;
  /// Workflow option to determine whether the workflow file should be generated and written to the repository.
  final bool? generateWorkflowFile;
  /// This will help determine the workflow configuration to select.
  final bool? isLinux;

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
      'codeConfiguration': ?codeConfiguration == null ? null : codeConfiguration!.toMap(),
      'containerConfiguration': ?containerConfiguration == null ? null : containerConfiguration!.toMap(),
      'generateWorkflowFile': ?generateWorkflowFile,
      'isLinux': ?isLinux,
    };
  }

  factory GitHubActionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GitHubActionConfigurationResponse(
      codeConfiguration: map['codeConfiguration'] == null ? null : GitHubActionCodeConfigurationResponse.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>()),
      containerConfiguration: map['containerConfiguration'] == null ? null : GitHubActionContainerConfigurationResponse.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>()),
      generateWorkflowFile: map['generateWorkflowFile'] == null ? null : map['generateWorkflowFile'] as bool,
      isLinux: map['isLinux'] == null ? null : map['isLinux'] as bool,
    );
  }
}

