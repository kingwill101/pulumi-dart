// ignore_for_file: unused_element, unnecessary_cast


class HBaseClusterGateway {
  /// The password used for the Ambari Portal.
  ///
  /// > **Note:** This password must be different from the one used for the `head_node`, `worker_node` and `zookeeper_node` roles.
  final String password;
  /// The username used for the Ambari Portal. Changing this forces a new resource to be created.
  final String username;

  /// Creates a new [HBaseClusterGateway].
  /// [password] The password used for the Ambari Portal.
  /// [username] The username used for the Ambari Portal. Changing this forces a new resource to be created.
  HBaseClusterGateway({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory HBaseClusterGateway.fromMap(Map<String, dynamic> map) {
    return HBaseClusterGateway(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

