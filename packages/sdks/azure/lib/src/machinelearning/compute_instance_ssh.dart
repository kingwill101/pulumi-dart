// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeInstanceSsh {
  /// Describes the port for connecting through SSH.
  final pulumi.Input<int>? port;
  /// Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  final pulumi.Input<String> publicKey;
  /// The admin username of this Machine Learning Compute Instance.
  final pulumi.Input<String>? username;

  /// Creates a new [ComputeInstanceSsh].
  /// [port] Describes the port for connecting through SSH.
  /// [publicKey] Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  /// [username] The admin username of this Machine Learning Compute Instance.
  ComputeInstanceSsh({
    this.port,
    required this.publicKey,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'publicKey': publicKey,
      'username': ?username,
    };
  }

  factory ComputeInstanceSsh.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceSsh(
      port: map['port'] == null ? null : (map['port']! as int).input(),
      publicKey: (map['publicKey'] as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

