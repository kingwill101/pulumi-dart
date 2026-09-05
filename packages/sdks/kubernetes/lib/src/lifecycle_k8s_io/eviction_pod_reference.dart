// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EvictionPodReference contains enough information to locate the referenced pod inside the same namespace.
class EvictionPodReference {
  /// name of the target. This field is required.
  final pulumi.Input<String> name;
  /// uid of the target. It can be found in .metadata.uid of the target and is a lowercase UUID in 8-4-4-4-12 format. This field is required.
  final pulumi.Input<String> uid;

  /// Creates a new [EvictionPodReference].
  /// [name] name of the target. This field is required.
  /// [uid] uid of the target. It can be found in .metadata.uid of the target and is a lowercase UUID in 8-4-4-4-12 format. This field is required.
  const EvictionPodReference({
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'uid': uid,
    };
  }

  factory EvictionPodReference.fromMap(Map<String, dynamic> map) {
    return EvictionPodReference(
      name: pulumi.Input.fromValue(map['name'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
