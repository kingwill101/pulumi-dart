// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EvictionPodReference contains enough information to locate the referenced pod inside the same namespace.
class EvictionPodReferencePatch {
  /// name of the target. This field is required.
  final pulumi.Input<String?>? name;
  /// uid of the target. It can be found in .metadata.uid of the target and is a lowercase UUID in 8-4-4-4-12 format. This field is required.
  final pulumi.Input<String?>? uid;

  /// Creates a new [EvictionPodReferencePatch].
  /// [name] name of the target. This field is required.
  /// [uid] uid of the target. It can be found in .metadata.uid of the target and is a lowercase UUID in 8-4-4-4-12 format. This field is required.
  const EvictionPodReferencePatch({
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory EvictionPodReferencePatch.fromMap(Map<String, dynamic> map) {
    return EvictionPodReferencePatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
