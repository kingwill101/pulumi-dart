// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for a Kubernetes Environment to use for this resource.
class KubeEnvironmentProfile {
  /// Resource ID of the Kubernetes Environment.
  final pulumi.Input<String>? id;

  /// Creates a new [KubeEnvironmentProfile].
  /// [id] Resource ID of the Kubernetes Environment.
  const KubeEnvironmentProfile({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KubeEnvironmentProfile.fromMap(Map<String, dynamic> map) {
    return KubeEnvironmentProfile(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
