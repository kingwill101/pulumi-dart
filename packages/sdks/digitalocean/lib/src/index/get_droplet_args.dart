// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_droplet_get_droplet_args_doc}
/// Arguments for getDroplet.
/// {@endtemplate}
/// {@macro pulumi_index_get_droplet_get_droplet_args_doc}
class GetDropletArgs {
  /// A boolean value specifying whether or not to search GPU Droplets
  final pulumi.Input<bool>? gpu;
  /// The ID of the Droplet
  final pulumi.Input<int>? id;
  /// The name of the Droplet.
  final pulumi.Input<String>? name;
  /// A tag applied to the Droplet.
  ///
  /// To include GPU Droplets when searching by name, use:
  final pulumi.Input<String>? tag;

  /// Creates a new [GetDropletArgs].
  /// [gpu] A boolean value specifying whether or not to search GPU Droplets
  /// [id] The ID of the Droplet
  /// [name] The name of the Droplet.
  /// [tag] A tag applied to the Droplet.
  GetDropletArgs({
    pulumi.Output<bool>? gpu,
    pulumi.Output<int>? id,
    pulumi.Output<String>? name,
    pulumi.Output<String>? tag,
  }) :
      gpu = pulumi.Input.asOptionalInput<bool>(gpu),
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      tag = pulumi.Input.asOptionalInput<String>(tag);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpu': ?gpu,
      'id': ?id,
      'name': ?name,
      'tag': ?tag,
    };
  }

  factory GetDropletArgs.fromMap(Map<String, dynamic> map) {
    return GetDropletArgs(
      gpu: map['gpu'] == null ? null : pulumi.Output.create<bool>(map['gpu'] as bool),
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tag: map['tag'] == null ? null : pulumi.Output.create<String>(map['tag'] as String),
    );
  }
}

