// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_queued_resource_tpu.dart';

/// {@template pulumi_tpu_v2_queued_resource_v2_queued_resource_args_doc}
/// The set of arguments for V2QueuedResource.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2_queued_resource_v2_queued_resource_args_doc}
class V2QueuedResourceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The immutable name of the Queued Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Defines a TPU resource.
  /// Structure is documented below.
  final pulumi.Input<V2QueuedResourceTpu>? tpu;
  /// The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [V2QueuedResourceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The immutable name of the Queued Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [tpu] Defines a TPU resource.
  /// [zone] The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  const V2QueuedResourceArgs({
    this.deletionPolicy,
    this.name,
    this.project,
    this.tpu,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'tpu': ?pulumi.Input.mapOptionalInputValue<V2QueuedResourceTpu, Map<String, dynamic>>(tpu, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory V2QueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tpu: (() { final guardedValue = map['tpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2QueuedResourceTpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
