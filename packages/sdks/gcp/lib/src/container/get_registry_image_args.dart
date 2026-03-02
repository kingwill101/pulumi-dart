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
    this.digest,
    required this.name,
    this.project,
    this.region,
    this.tag,
  });

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
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

