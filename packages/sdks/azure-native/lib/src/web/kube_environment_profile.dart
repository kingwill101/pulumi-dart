// ignore_for_file: unused_element, unnecessary_cast


/// Specification for a Kubernetes Environment to use for this resource.
class KubeEnvironmentProfile {
  /// Resource ID of the Kubernetes Environment.
  final String? id;

  /// Creates a new [KubeEnvironmentProfile].
  /// [id] Resource ID of the Kubernetes Environment.
  KubeEnvironmentProfile({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KubeEnvironmentProfile.fromMap(Map<String, dynamic> map) {
    return KubeEnvironmentProfile(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

