// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_canonical_deployment_source_config.dart';

class PagesProjectCanonicalDeploymentSource {
  final pulumi.Input<PagesProjectCanonicalDeploymentSourceConfig?>? config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String?>? type;

  /// Creates a new [PagesProjectCanonicalDeploymentSource].
  /// [config] Optional.
  /// [type] The source control management provider.
  const PagesProjectCanonicalDeploymentSource({
    this.config,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<PagesProjectCanonicalDeploymentSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PagesProjectCanonicalDeploymentSource.fromMap(Map<String, dynamic> map) {
    return PagesProjectCanonicalDeploymentSource(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectCanonicalDeploymentSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
