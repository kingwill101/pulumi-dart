// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_latest_deployment_source_config.dart';

class PagesProjectLatestDeploymentSource {
  final pulumi.Input<PagesProjectLatestDeploymentSourceConfig?>? config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String?>? type;

  /// Creates a new [PagesProjectLatestDeploymentSource].
  /// [config] Optional.
  /// [type] The source control management provider.
  const PagesProjectLatestDeploymentSource({
    this.config,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<PagesProjectLatestDeploymentSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PagesProjectLatestDeploymentSource.fromMap(Map<String, dynamic> map) {
    return PagesProjectLatestDeploymentSource(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectLatestDeploymentSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
