// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_droplet_autoscale_get_droplet_autoscale_args_doc}
/// Arguments for getDropletAutoscale.
/// {@endtemplate}
/// {@macro pulumi_index_get_droplet_autoscale_get_droplet_autoscale_args_doc}
class GetDropletAutoscaleArgs {
  /// The ID of Droplet Autoscale pool.
  final pulumi.Input<String>? id;
  /// The name of Droplet Autoscale pool.
  final pulumi.Input<String>? name;

  /// Creates a new [GetDropletAutoscaleArgs].
  /// [id] The ID of Droplet Autoscale pool.
  /// [name] The name of Droplet Autoscale pool.
  GetDropletAutoscaleArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetDropletAutoscaleArgs.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

