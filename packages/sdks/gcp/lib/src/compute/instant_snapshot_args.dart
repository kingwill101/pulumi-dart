// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instant_snapshot_params.dart';

/// {@template pulumi_compute_instant_snapshot_instant_snapshot_args_doc}
/// The set of arguments for InstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_instant_snapshot_instant_snapshot_args_doc}
class InstantSnapshotArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// Labels to apply to this InstantSnapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<InstantSnapshotParams?>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the disk used to create this instant snapshot.
  final pulumi.Input<String> sourceDisk;
  /// A reference to the zone where the disk is located.
  final pulumi.Input<String?>? zone;

  /// Creates a new [InstantSnapshotArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [labels] Labels to apply to this InstantSnapshot.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceDisk] A reference to the disk used to create this instant snapshot.
  /// [zone] A reference to the zone where the disk is located.
  const InstantSnapshotArgs({
    this.deletionPolicy,
    this.description,
    this.labels,
    this.name,
    this.params,
    this.project,
    required this.sourceDisk,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<InstantSnapshotParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'sourceDisk': sourceDisk,
      'zone': ?zone,
    };
  }

  factory InstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return InstantSnapshotArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstantSnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDisk: pulumi.Input.fromValue(map['sourceDisk'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
