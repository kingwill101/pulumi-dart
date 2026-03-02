// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listOpenShiftClusterAdminCredentials.
class ListOpenShiftClusterAdminCredentialsResult {
  /// The base64-encoded kubeconfig file.
  final String? kubeconfig;

  /// Creates a new [ListOpenShiftClusterAdminCredentialsResult].
  /// [kubeconfig] The base64-encoded kubeconfig file.
  ListOpenShiftClusterAdminCredentialsResult({
    this.kubeconfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfig': ?kubeconfig,
    };
  }

  factory ListOpenShiftClusterAdminCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListOpenShiftClusterAdminCredentialsResult(
      kubeconfig: map['kubeconfig'] == null ? null : map['kubeconfig']! as String,
    );
  }
}

