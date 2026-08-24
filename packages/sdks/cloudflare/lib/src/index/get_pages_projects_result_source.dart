// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_source_config.dart';

class GetPagesProjectsResultSource {
  final pulumi.Input<GetPagesProjectsResultSourceConfig> config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectsResultSource].
  /// [config] Required.
  /// [type] The source control management provider.
  const GetPagesProjectsResultSource({
    required this.config,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetPagesProjectsResultSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectsResultSource.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultSource(
      config: pulumi.Input.fromValue(GetPagesProjectsResultSourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
