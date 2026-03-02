// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for a Kubernetes Environment to use for this resource.
class KubeEnvironmentProfileResponse {
  /// Resource ID of the Kubernetes Environment.
  final pulumi.Input<String>? id;
  /// Name of the Kubernetes Environment.
  final pulumi.Input<String> name;
  /// Resource type of the Kubernetes Environment.
  final pulumi.Input<String> type;

  /// Creates a new [KubeEnvironmentProfileResponse].
  /// [id] Resource ID of the Kubernetes Environment.
  /// [name] Name of the Kubernetes Environment.
  /// [type] Resource type of the Kubernetes Environment.
  KubeEnvironmentProfileResponse({
    this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'type': type,
    };
  }

  factory KubeEnvironmentProfileResponse.fromMap(Map<String, dynamic> map) {
    return KubeEnvironmentProfileResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

