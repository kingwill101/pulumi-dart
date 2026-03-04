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

  factory ListOpenShiftClusterCredentialsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListOpenShiftClusterCredentialsResult(
      kubeadminPassword: (() {
        final guardedValue = map['kubeadminPassword'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      kubeadminUsername: (() {
        final guardedValue = map['kubeadminUsername'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
