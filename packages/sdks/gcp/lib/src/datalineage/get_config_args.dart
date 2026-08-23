// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalineage_get_config_get_config_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_datalineage_get_config_get_config_args_doc}
class GetConfigArgs {
  /// The region of the data lineage configuration for integration.
  final pulumi.Input<String> location;
  /// Parent scope for the config.
  /// Format: projects/{project-id|project-number} or folders/{folder-number} or organizations/{organization-number}.
  final pulumi.Input<String> parent;

  /// Creates a new [GetConfigArgs].
  /// [location] The region of the data lineage configuration for integration.
  /// [parent] Parent scope for the config.
  const GetConfigArgs({
    required this.location,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'parent': parent,
    };
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
