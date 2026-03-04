// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_build.dart';
import 'registry.dart';

/// {@template pulumi_index_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_index_image_image_args_doc}
class ImageArgs {
  /// The Docker build context
  final pulumi.Input<DockerBuild>? build;

  /// A flag to build an image on preview
  final pulumi.Input<bool>? buildOnPreview;

  /// The image name, of the format repository[:tag], e.g. `docker.io/username/demo-image:v1`.
  /// This reference is not unique to each build and push.For the unique manifest SHA of a pushed docker image, or the local image ID, please use `repoDigest`.
  final pulumi.Input<String> imageName;

  /// The registry to push the image to
  final pulumi.Input<Registry>? registry;

  /// A flag to skip a registry push.
  final pulumi.Input<bool>? skipPush;

  /// Creates a new [ImageArgs].
  /// [build] The Docker build context
  /// [buildOnPreview] A flag to build an image on preview
  /// [imageName] The image name, of the format repository[:tag], e.g. `docker.io/username/demo-image:v1`.
  /// [registry] The registry to push the image to
  /// [skipPush] A flag to skip a registry push.
  ImageArgs({
    this.build,
    this.buildOnPreview,
    required this.imageName,
    this.registry,
    this.skipPush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build':
          ?pulumi.Input.mapOptionalInputValue<
            DockerBuild,
            Map<String, dynamic>
          >(build, (value) => value.toMap()),
      'buildOnPreview': ?buildOnPreview,
      'imageName': imageName,
      'registry':
          ?pulumi.Input.mapOptionalInputValue<Registry, Map<String, dynamic>>(
            registry,
            (value) => value.toMap(),
          ),
      'skipPush': ?skipPush,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      build: (() {
        final guardedValue = map['build'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DockerBuild.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      buildOnPreview: (() {
        final guardedValue = map['buildOnPreview'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      registry: (() {
        final guardedValue = map['registry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Registry.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      skipPush: (() {
        final guardedValue = map['skipPush'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
