// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
class Preconditions {
  /// Specifies the target ResourceVersion
  final pulumi.Input<String>? resourceVersion;
  /// Specifies the target UID.
  final pulumi.Input<String>? uid;

  /// Creates a new [Preconditions].
  /// [resourceVersion] Specifies the target ResourceVersion
  /// [uid] Specifies the target UID.
  const Preconditions({
    this.resourceVersion,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceVersion': ?resourceVersion,
      'uid': ?uid,
    };
  }

  factory Preconditions.fromMap(Map<String, dynamic> map) {
    return Preconditions(
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

