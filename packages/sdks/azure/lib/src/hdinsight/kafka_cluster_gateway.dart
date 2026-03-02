// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KafkaClusterGateway {
  /// The password used for the Ambari Portal.
  ///
  /// > **Note:** This password must be different from the one used for the `head_node`, `worker_node` and `zookeeper_node` roles.
  final pulumi.Input<String> password;
  /// The username used for the Ambari Portal. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [KafkaClusterGateway].
  /// [password] The password used for the Ambari Portal.
  /// [username] The username used for the Ambari Portal. Changing this forces a new resource to be created.
  KafkaClusterGateway({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory KafkaClusterGateway.fromMap(Map<String, dynamic> map) {
    return KafkaClusterGateway(
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

