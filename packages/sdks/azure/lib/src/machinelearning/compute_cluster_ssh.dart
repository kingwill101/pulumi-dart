// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeClusterSsh {
  /// Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? adminPassword;

  /// Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String> adminUsername;

  /// SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
  ///
  /// &gt; **Note:** At least one of `admin_password` and `key_value` shoud be specified.
  final pulumi.Input<String>? keyValue;

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
      adminPassword: (() {
        final guardedValue = map['adminPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      keyValue: (() {
        final guardedValue = map['keyValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
