// ignore_for_file: unused_element, unnecessary_cast


class ComputeClusterSsh {
  /// Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
  final String? adminPassword;
  /// Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created.
  final String adminUsername;
  /// SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
  ///
  /// > **Note:** At least one of `admin_password` and `key_value` shoud be specified.
  final String? keyValue;

  /// Creates a new [ComputeClusterSsh].
  /// [adminPassword] Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [adminUsername] Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [keyValue] SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
  ComputeClusterSsh({
    this.adminPassword,
    required this.adminUsername,
    this.keyValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': adminUsername,
      'keyValue': ?keyValue,
    };
  }

  factory ComputeClusterSsh.fromMap(Map<String, dynamic> map) {
    return ComputeClusterSsh(
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      adminUsername: map['adminUsername'] as String,
      keyValue: map['keyValue'] == null ? null : map['keyValue'] as String,
    );
  }
}

