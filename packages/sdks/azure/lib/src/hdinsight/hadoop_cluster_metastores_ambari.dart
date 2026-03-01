// ignore_for_file: unused_element, unnecessary_cast


class HadoopClusterMetastoresAmbari {
  /// The external Hive metastore's existing SQL database. Changing this forces a new resource to be created.
  final String databaseName;
  /// The external Ambari metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  final String password;
  /// The fully-qualified domain name (FQDN) of the SQL server to use for the external Ambari metastore. Changing this forces a new resource to be created.
  final String server;
  /// The external Ambari metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  final String username;

  /// Creates a new [HadoopClusterMetastoresAmbari].
  /// [databaseName] The external Hive metastore's existing SQL database. Changing this forces a new resource to be created.
  /// [password] The external Ambari metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  /// [server] The fully-qualified domain name (FQDN) of the SQL server to use for the external Ambari metastore. Changing this forces a new resource to be created.
  /// [username] The external Ambari metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  HadoopClusterMetastoresAmbari({
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

  factory HadoopClusterMetastoresAmbari.fromMap(Map<String, dynamic> map) {
    return HadoopClusterMetastoresAmbari(
      databaseName: map['databaseName'] as String,
      password: map['password'] as String,
      server: map['server'] as String,
      username: map['username'] as String,
    );
  }
}

