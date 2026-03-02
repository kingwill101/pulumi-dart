// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterMetastoresOozie {
  /// The external Oozie metastore's existing SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// The external Oozie metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  final pulumi.Input<String> password;
  /// The fully-qualified domain name (FQDN) of the SQL server to use for the external Oozie metastore. Changing this forces a new resource to be created.
  final pulumi.Input<String> server;
  /// The external Oozie metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [HadoopClusterMetastoresOozie].
  /// [databaseName] The external Oozie metastore's existing SQL database. Changing this forces a new resource to be created.
  /// [password] The external Oozie metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  /// [server] The fully-qualified domain name (FQDN) of the SQL server to use for the external Oozie metastore. Changing this forces a new resource to be created.
  /// [username] The external Oozie metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  HadoopClusterMetastoresOozie({
    required this.databaseName,
    required this.password,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'password': password,
      'server': server,
      'username': username,
    };
  }

  factory HadoopClusterMetastoresOozie.fromMap(Map<String, dynamic> map) {
    return HadoopClusterMetastoresOozie(
      databaseName: (map['databaseName'] as String).input(),
      password: (map['password'] as String).input(),
      server: (map['server'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

