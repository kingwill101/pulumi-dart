// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FastHttpsAppPoolMember {
  /// List of server address to be used for FAST-Generated Pool.
  final pulumi.Input<List<String>> addresses;
  /// connectionLimit value to be used for FAST-Generated Pool.
  final pulumi.Input<int>? connectionLimit;
  /// port number of serviceport to be used for FAST-Generated Pool.
  final pulumi.Input<int>? port;
  /// priorityGroup value to be used for FAST-Generated Pool.
  final pulumi.Input<int>? priorityGroup;
  /// shareNodes value to be used for FAST-Generated Pool.
  final pulumi.Input<bool>? shareNodes;

  /// Creates a new [FastHttpsAppPoolMember].
  /// [addresses] List of server address to be used for FAST-Generated Pool.
  /// [connectionLimit] connectionLimit value to be used for FAST-Generated Pool.
  /// [port] port number of serviceport to be used for FAST-Generated Pool.
  /// [priorityGroup] priorityGroup value to be used for FAST-Generated Pool.
  /// [shareNodes] shareNodes value to be used for FAST-Generated Pool.
  FastHttpsAppPoolMember({
    required this.addresses,
    this.connectionLimit,
    this.port,
    this.priorityGroup,
    this.shareNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'connectionLimit': ?connectionLimit,
      'port': ?port,
      'priorityGroup': ?priorityGroup,
      'shareNodes': ?shareNodes,
    };
  }

  factory FastHttpsAppPoolMember.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppPoolMember(
      addresses: ((map['addresses'] as List).cast<String>()).input(),
      connectionLimit: map['connectionLimit'] == null ? null : (map['connectionLimit']! as int).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      priorityGroup: map['priorityGroup'] == null ? null : (map['priorityGroup']! as int).input(),
      shareNodes: map['shareNodes'] == null ? null : (map['shareNodes']! as bool).input(),
    );
  }
}

