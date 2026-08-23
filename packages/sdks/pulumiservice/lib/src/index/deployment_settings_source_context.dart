// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_git_source.dart';

/// Settings related to the source of the deployment.
class DeploymentSettingsSourceContext {
  /// Git source settings for a deployment.
  final pulumi.Input<DeploymentSettingsGitSource>? git;

  /// Creates a new [DeploymentSettingsSourceContext].
  /// [git] Git source settings for a deployment.
  const DeploymentSettingsSourceContext({
    this.git,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'git': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsGitSource, Map<String, dynamic>>(git, (value) => value.toMap()),
    };
  }

  factory DeploymentSettingsSourceContext.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsSourceContext(
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsGitSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
