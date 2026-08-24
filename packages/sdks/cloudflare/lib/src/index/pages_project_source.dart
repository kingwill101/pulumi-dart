// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_source_config.dart';

class PagesProjectSource {
  final pulumi.Input<PagesProjectSourceConfig> config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String> type;

  /// Creates a new [PagesProjectSource].
  /// [config] Required.
  /// [type] The source control management provider.
  const PagesProjectSource({
    required this.config,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<PagesProjectSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PagesProjectSource.fromMap(Map<String, dynamic> map) {
    return PagesProjectSource(
      config: pulumi.Input.fromValue(PagesProjectSourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
