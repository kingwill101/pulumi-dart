// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_settings_metadata.dart';

/// Input properties used for looking up and filtering InstanceSettings resources.
class InstanceSettingsState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? fingerprint;
  /// The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// Structure is documented below.
  final pulumi.Input<InstanceSettingsMetadata>? metadata;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceSettingsState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [fingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [metadata] The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the machine resides.
  const InstanceSettingsState({
    this.deletionPolicy,
    this.fingerprint,
    this.metadata,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'fingerprint': ?fingerprint,
      'metadata': ?pulumi.Input.mapOptionalInputValue<InstanceSettingsMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceSettingsState.fromMap(Map<String, dynamic> map) {
    return InstanceSettingsState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSettingsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
