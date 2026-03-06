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
  const GetRegistryImageArgs({
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
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

