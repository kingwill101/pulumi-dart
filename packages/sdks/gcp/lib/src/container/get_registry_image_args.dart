// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_registry_image_get_registry_image_args_doc}
/// Arguments for getRegistryImage.
/// {@endtemplate}
/// {@macro pulumi_container_get_registry_image_get_registry_image_args_doc}
class GetRegistryImageArgs {
  /// The image digest to fetch, if any.
  final pulumi.Input<String>? digest;
  /// The image name.
  final pulumi.Input<String> name;
  /// The project ID that this image is attached to.  If not provider, provider project will be used instead.
  final pulumi.Input<String>? project;
  /// The GCR region to use.  As of this writing, one of `asia`, `eu`, and `us`.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  final pulumi.Input<String>? region;
  /// The tag to fetch, if any.
  final pulumi.Input<String>? tag;

  /// Creates a new [GetRegistryImageArgs].
  /// [digest] The image digest to fetch, if any.
  /// [name] The image name.
  /// [project] The project ID that this image is attached to.  If not provider, provider project will be used instead.
  /// [region] The GCR region to use.  As of this writing, one of `asia`, `eu`, and `us`.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  /// [tag] The tag to fetch, if any.
  GetRegistryImageArgs({
    pulumi.Output<String>? digest,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tag,
  }) :
      digest = pulumi.Input.asOptionalInput<String>(digest),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      tag = pulumi.Input.asOptionalInput<String>(tag);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'name': name,
      'project': ?project,
      'region': ?region,
      'tag': ?tag,
    };
  }

  factory GetRegistryImageArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageArgs(
      digest: map['digest'] == null ? null : pulumi.Output.create<String>(map['digest'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tag: map['tag'] == null ? null : pulumi.Output.create<String>(map['tag'] as String),
    );
  }
}

