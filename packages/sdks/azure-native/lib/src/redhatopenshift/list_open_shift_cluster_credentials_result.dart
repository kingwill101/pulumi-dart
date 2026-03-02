// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listOpenShiftClusterCredentials.
class ListOpenShiftClusterCredentialsResult {
  /// The password for the kubeadmin user.
  final String? kubeadminPassword;
  /// The username for the kubeadmin user.
  final String? kubeadminUsername;

  /// Creates a new [ListOpenShiftClusterCredentialsResult].
  /// [kubeadminPassword] The password for the kubeadmin user.
  /// [kubeadminUsername] The username for the kubeadmin user.
  ListOpenShiftClusterCredentialsResult({
    this.kubeadminPassword,
    this.kubeadminUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeadminPassword': ?kubeadminPassword,
      'kubeadminUsername': ?kubeadminUsername,
    };
  }

  factory ListOpenShiftClusterCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListOpenShiftClusterCredentialsResult(
      kubeadminPassword: map['kubeadminPassword'] == null ? null : map['kubeadminPassword']! as String,
      kubeadminUsername: map['kubeadminUsername'] == null ? null : map['kubeadminUsername']! as String,
    );
  }
}

