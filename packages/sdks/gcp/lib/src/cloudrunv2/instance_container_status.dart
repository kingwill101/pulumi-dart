// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceContainerStatus {
  /// (Output)
  /// ImageDigest holds the resolved digest for the image specified and resolved during the creation of Revision. This field holds the digest value regardless of whether a tag or digest was originally specified in the Container object.
  final pulumi.Input<String?>? imageDigest;
  /// Name of the Instance.
  final pulumi.Input<String?>? name;

  /// Creates a new [InstanceContainerStatus].
  /// [imageDigest] (Output)
  /// [name] Name of the Instance.
  const InstanceContainerStatus({
    this.imageDigest,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageDigest': ?imageDigest,
      'name': ?name,
    };
  }

  factory InstanceContainerStatus.fromMap(Map<String, dynamic> map) {
    return InstanceContainerStatus(
      imageDigest: (() { final guardedValue = map['imageDigest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
