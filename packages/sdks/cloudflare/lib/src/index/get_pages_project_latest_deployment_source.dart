// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_latest_deployment_source_config.dart';

class GetPagesProjectLatestDeploymentSource {
  final pulumi.Input<GetPagesProjectLatestDeploymentSourceConfig> config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectLatestDeploymentSource].
  /// [config] Required.
  /// [type] The source control management provider.
  const GetPagesProjectLatestDeploymentSource({
    required this.config,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetPagesProjectLatestDeploymentSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectLatestDeploymentSource.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectLatestDeploymentSource(
      config: pulumi.Input.fromValue(GetPagesProjectLatestDeploymentSourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
