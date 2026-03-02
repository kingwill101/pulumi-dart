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
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetDropletAutoscaleArgs.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

