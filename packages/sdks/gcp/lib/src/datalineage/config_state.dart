// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_ingestion.dart';

/// Input properties used for looking up and filtering Config resources.
class ConfigState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Used for optimistic concurrency control when patching config.
  final pulumi.Input<String>? etag;
  /// Defines how Lineage should be ingested for this resource.
  /// Structure is documented below.
  final pulumi.Input<ConfigIngestion>? ingestion;
  /// The region of the data lineage configuration for integration.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the config.
  /// Format: organizations/{organization_id}/locations/{location}/config,
  /// folders/{folder_id}/locations/{location}/config,
  /// projects/{project_id}/locations/{location}/config,
  /// or projects/{project_number}/locations/{location}/config.
  final pulumi.Input<String>? name;
  /// Parent scope for the config.
  /// Format: projects/{project-id|project-number} or folders/{folder-number} or organizations/{organization-number}.
  final pulumi.Input<String>? parent;

  /// Creates a new [ConfigState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] Used for optimistic concurrency control when patching config.
  /// [ingestion] Defines how Lineage should be ingested for this resource.
  /// [location] The region of the data lineage configuration for integration.
  /// [name] Identifier. The resource name of the config.
  /// [parent] Parent scope for the config.
  const ConfigState({
    this.deletionPolicy,
    this.etag,
    this.ingestion,
    this.location,
    this.name,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'ingestion': ?pulumi.Input.mapOptionalInputValue<ConfigIngestion, Map<String, dynamic>>(ingestion, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
    };
  }

  factory ConfigState.fromMap(Map<String, dynamic> map) {
    return ConfigState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestion: (() { final guardedValue = map['ingestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigIngestion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
