// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_github_action_configuration_code_configuration.dart';
import 'source_control_github_action_configuration_container_configuration.dart';

class SourceControlGithubActionConfiguration {
  /// A `codeConfiguration` block as defined above. Changing this forces a new resource to be created.
  final pulumi.Input<SourceControlGithubActionConfigurationCodeConfiguration>? codeConfiguration;
  /// A `containerConfiguration` block as defined above.
  final pulumi.Input<SourceControlGithubActionConfigurationContainerConfiguration>? containerConfiguration;
  /// Whether to generate the GitHub work flow file. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? generateWorkflowFile;
  /// Denotes this action uses a Linux base image.
  final pulumi.Input<bool>? linuxAction;

  /// Creates a new [SourceControlGithubActionConfiguration].
  /// [codeConfiguration] A `codeConfiguration` block as defined above. Changing this forces a new resource to be created.
  /// [containerConfiguration] A `containerConfiguration` block as defined above.
  /// [generateWorkflowFile] Whether to generate the GitHub work flow file. Defaults to `true`. Changing this forces a new resource to be created.
  /// [linuxAction] Denotes this action uses a Linux base image.
  const SourceControlGithubActionConfiguration({
    this.codeConfiguration,
    this.containerConfiguration,
    this.generateWorkflowFile,
    this.linuxAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlGithubActionConfigurationCodeConfiguration, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlGithubActionConfigurationContainerConfiguration, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
      'generateWorkflowFile': ?generateWorkflowFile,
      'linuxAction': ?linuxAction,
    };
  }

  factory SourceControlGithubActionConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlGithubActionConfiguration(
      codeConfiguration: (() { final guardedValue = map['codeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceControlGithubActionConfigurationCodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerConfiguration: (() { final guardedValue = map['containerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceControlGithubActionConfigurationContainerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generateWorkflowFile: (() { final guardedValue = map['generateWorkflowFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linuxAction: (() { final guardedValue = map['linuxAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
