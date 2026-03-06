// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InteractiveQueryClusterGateway {
  /// The password used for the Ambari Portal.
  ///
  /// &gt; **Note:** This password must be different from the one used for the `head_node`, `worker_node` and `zookeeper_node` roles.
  final pulumi.Input<String> password;
  /// The username used for the Ambari Portal. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [InteractiveQueryClusterGateway].
  /// [password] The password used for the Ambari Portal.
  /// [username] The username used for the Ambari Portal. Changing this forces a new resource to be created.
  const InteractiveQueryClusterGateway({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory InteractiveQueryClusterGateway.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterGateway(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

