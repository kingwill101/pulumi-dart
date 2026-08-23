// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_ingestion.dart';

/// {@template pulumi_datalineage_config_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_datalineage_config_config_args_doc}
class ConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Defines how Lineage should be ingested for this resource.
  /// Structure is documented below.
  final pulumi.Input<ConfigIngestion> ingestion;
  /// The region of the data lineage configuration for integration.
  final pulumi.Input<String> location;
  /// Parent scope for the config.
  /// Format: projects/{project-id|project-number} or folders/{folder-number} or organizations/{organization-number}.
  final pulumi.Input<String> parent;

  /// Creates a new [ConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [ingestion] Defines how Lineage should be ingested for this resource.
  /// [location] The region of the data lineage configuration for integration.
  /// [parent] Parent scope for the config.
  const ConfigArgs({
    this.deletionPolicy,
    required this.ingestion,
    required this.location,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'ingestion': pulumi.Input.mapInputValue<ConfigIngestion, Map<String, dynamic>>(ingestion, (value) => value.toMap()),
      'location': location,
      'parent': parent,
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestion: pulumi.Input.fromValue(ConfigIngestion.fromMap((map['ingestion']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
