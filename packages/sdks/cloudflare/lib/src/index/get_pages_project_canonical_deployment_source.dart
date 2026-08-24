// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_canonical_deployment_source_config.dart';

class GetPagesProjectCanonicalDeploymentSource {
  final pulumi.Input<GetPagesProjectCanonicalDeploymentSourceConfig> config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectCanonicalDeploymentSource].
  /// [config] Required.
  /// [type] The source control management provider.
  const GetPagesProjectCanonicalDeploymentSource({
    required this.config,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetPagesProjectCanonicalDeploymentSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectCanonicalDeploymentSource.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectCanonicalDeploymentSource(
      config: pulumi.Input.fromValue(GetPagesProjectCanonicalDeploymentSourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
