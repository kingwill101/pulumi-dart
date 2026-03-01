// ignore_for_file: unused_element, unnecessary_cast

import 'get_databases_database_private_network.dart';

class GetDatabasesDatabase {
  /// A list of IP addresses that can access the Managed Database.
  final List<String> allowLists;
  /// The number of Linode Instance nodes deployed to the Managed Database.
  final int clusterSize;
  /// When this Managed Database was created.
  final String created;
  /// Whether the Managed Databases is encrypted.
  final bool encrypted;
  /// The Managed Database engine.
  final String engine;
  /// The primary host for the Managed Database.
  final String hostPrimary;
  /// The secondary/private network host for the Managed Database.
  final String hostSecondary;
  /// The ID of the Managed Database.
  final int id;
  /// he API route for the database instance.
  final String instanceUri;
  /// A unique, user-defined string referring to the Managed Database.
  final String label;
  /// Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  final GetDatabasesDatabasePrivateNetwork privateNetwork;
  /// The region to use for the Managed Database.
  final String region;
  /// The replication method used for the Managed Database.
  final String replicationType;
  /// Whether to require SSL credentials to establish a connection to the Managed Database.
  final bool sslConnection;
  /// The operating status of the Managed Database.
  final String status;
  /// The Linode Instance type used for the nodes of the  Managed Database instance.
  final String type;
  /// When this Managed Database was last updated.
  final String updated;
  /// The Managed Database engine version.
  final String version;

  /// Creates a new [GetDatabasesDatabase].
  /// [allowLists] A list of IP addresses that can access the Managed Database.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database.
  /// [created] When this Managed Database was created.
  /// [encrypted] Whether the Managed Databases is encrypted.
  /// [engine] The Managed Database engine.
  /// [hostPrimary] The primary host for the Managed Database.
  /// [hostSecondary] The secondary/private network host for the Managed Database.
  /// [id] The ID of the Managed Database.
  /// [instanceUri] he API route for the database instance.
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [privateNetwork] Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  /// [region] The region to use for the Managed Database.
  /// [replicationType] The replication method used for the Managed Database.
  /// [sslConnection] Whether to require SSL credentials to establish a connection to the Managed Database.
  /// [status] The operating status of the Managed Database.
  /// [type] The Linode Instance type used for the nodes of the  Managed Database instance.
  /// [updated] When this Managed Database was last updated.
  /// [version] The Managed Database engine version.
  GetDatabasesDatabase({
    required this.allowLists,
    required this.clusterSize,
    required this.created,
    required this.encrypted,
    required this.engine,
    required this.hostPrimary,
    required this.hostSecondary,
    required this.id,
    required this.instanceUri,
    required this.label,
    required this.privateNetwork,
    required this.region,
    required this.replicationType,
    required this.sslConnection,
    required this.status,
    required this.type,
    required this.updated,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': allowLists,
      'clusterSize': clusterSize,
      'created': created,
      'encrypted': encrypted,
      'engine': engine,
      'hostPrimary': hostPrimary,
      'hostSecondary': hostSecondary,
      'id': id,
      'instanceUri': instanceUri,
      'label': label,
      'privateNetwork': privateNetwork.toMap(),
      'region': region,
      'replicationType': replicationType,
      'sslConnection': sslConnection,
      'status': status,
      'type': type,
      'updated': updated,
      'version': version,
    };
  }

  factory GetDatabasesDatabase.fromMap(Map<String, dynamic> map) {
    return GetDatabasesDatabase(
      allowLists: (map['allowLists'] as List).cast<String>(),
      clusterSize: map['clusterSize'] as int,
      created: map['created'] as String,
      encrypted: map['encrypted'] as bool,
      engine: map['engine'] as String,
      hostPrimary: map['hostPrimary'] as String,
      hostSecondary: map['hostSecondary'] as String,
      id: map['id'] as int,
      instanceUri: map['instanceUri'] as String,
      label: map['label'] as String,
      privateNetwork: GetDatabasesDatabasePrivateNetwork.fromMap((map['privateNetwork'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      replicationType: map['replicationType'] as String,
      sslConnection: map['sslConnection'] as bool,
      status: map['status'] as String,
      type: map['type'] as String,
      updated: map['updated'] as String,
      version: map['version'] as String,
    );
  }
}

