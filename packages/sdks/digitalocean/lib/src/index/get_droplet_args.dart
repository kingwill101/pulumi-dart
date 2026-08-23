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
  const GetDropletArgs({
    this.gpu,
    this.id,
    this.name,
    this.tag,
  });

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
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
