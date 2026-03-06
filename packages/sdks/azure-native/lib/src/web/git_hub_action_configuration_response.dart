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
  const GitHubActionConfigurationResponse({
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
      codeConfiguration: (() { final guardedValue = map['codeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitHubActionCodeConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerConfiguration: (() { final guardedValue = map['containerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitHubActionContainerConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generateWorkflowFile: (() { final guardedValue = map['generateWorkflowFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLinux: (() { final guardedValue = map['isLinux']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

