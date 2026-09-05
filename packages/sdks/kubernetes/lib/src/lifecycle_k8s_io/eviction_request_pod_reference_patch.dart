// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EvictionRequestPodReference contains enough information to locate the referenced pod inside the same namespace.
class EvictionRequestPodReferencePatch {
  /// name of the target. This field is required.
  final pulumi.Input<String?>? name;
  /// uid of the target. It can be found in .metadata.uid of the target and is a lowercase UUID in 8-4-4-4-12 format. This field is required.
  final pulumi.Input<String?>? uid;

  /// Creates a new [EvictionRequestPodReferencePatch].
  /// [name] name of the target. This field is required.
  /// [uid] uid of the target. It can be found in .metadata.uid of the target and is a lowercase UUID in 8-4-4-4-12 format. This field is required.
  const EvictionRequestPodReferencePatch({
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory EvictionRequestPodReferencePatch.fromMap(Map<String, dynamic> map) {
    return EvictionRequestPodReferencePatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
