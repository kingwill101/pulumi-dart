// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_settings_metadata.dart';

/// {@template pulumi_compute_instance_settings_instance_settings_args_doc}
/// The set of arguments for InstanceSettings.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_settings_instance_settings_args_doc}
class InstanceSettingsArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// Structure is documented below.
  final pulumi.Input<InstanceSettingsMetadata?>? metadata;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String> zone;

  /// Creates a new [InstanceSettingsArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [metadata] The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the machine resides.
  const InstanceSettingsArgs({
    this.deletionPolicy,
    this.metadata,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'metadata': ?pulumi.Input.mapOptionalInputValue<InstanceSettingsMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'project': ?project,
      'zone': zone,
    };
  }

  factory InstanceSettingsArgs.fromMap(Map<String, dynamic> map) {
    return InstanceSettingsArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSettingsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
