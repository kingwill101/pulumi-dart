// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterGateway {
  /// The password used for the Ambari Portal.
  ///
  /// &gt; **Note:** This password must be different from the one used for the `headNode`, `workerNode` and `zookeeperNode` roles.
  final pulumi.Input<String> password;
  /// The username used for the Ambari Portal. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [SparkClusterGateway].
  /// [password] The password used for the Ambari Portal.
  /// [username] The username used for the Ambari Portal. Changing this forces a new resource to be created.
  const SparkClusterGateway({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory SparkClusterGateway.fromMap(Map<String, dynamic> map) {
    return SparkClusterGateway(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
