// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_database_private_network.dart';

class GetDatabasesDatabase {
  /// A list of IP addresses that can access the Managed Database.
  final pulumi.Input<List<String>> allowLists;
  /// The number of Linode Instance nodes deployed to the Managed Database.
  final pulumi.Input<int> clusterSize;
  /// When this Managed Database was created.
  final pulumi.Input<String> created;
  /// Whether the Managed Databases is encrypted.
  final pulumi.Input<bool> encrypted;
  /// The Managed Database engine.
  final pulumi.Input<String> engine;
  /// The primary host for the Managed Database.
  final pulumi.Input<String> hostPrimary;
  /// The secondary/private network host for the Managed Database.
  final pulumi.Input<String> hostSecondary;
  /// The ID of the Managed Database.
  final pulumi.Input<int> id;
  /// he API route for the database instance.
  final pulumi.Input<String> instanceUri;
  /// A unique, user-defined string referring to the Managed Database.
  final pulumi.Input<String> label;
  /// Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  final pulumi.Input<GetDatabasesDatabasePrivateNetwork> privateNetwork;
  /// The region to use for the Managed Database.
  final pulumi.Input<String> region;
  /// The replication method used for the Managed Database.
  final pulumi.Input<String> replicationType;
  /// Whether to require SSL credentials to establish a connection to the Managed Database.
  final pulumi.Input<bool> sslConnection;
  /// The operating status of the Managed Database.
  final pulumi.Input<String> status;
  /// The Linode Instance type used for the nodes of the  Managed Database instance.
  final pulumi.Input<String> type;
  /// When this Managed Database was last updated.
  final pulumi.Input<String> updated;
  /// The Managed Database engine version.
  final pulumi.Input<String> version;

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
      'privateNetwork': pulumi.Input.mapInputValue<GetDatabasesDatabasePrivateNetwork, Map<String, dynamic>>(privateNetwork, (value) => value.toMap()),
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
      allowLists: ((map['allowLists'] as List).cast<String>()).input(),
      clusterSize: (map['clusterSize'] as int).input(),
      created: (map['created'] as String).input(),
      encrypted: (map['encrypted'] as bool).input(),
      engine: (map['engine'] as String).input(),
      hostPrimary: (map['hostPrimary'] as String).input(),
      hostSecondary: (map['hostSecondary'] as String).input(),
      id: (map['id'] as int).input(),
      instanceUri: (map['instanceUri'] as String).input(),
      label: (map['label'] as String).input(),
      privateNetwork: (GetDatabasesDatabasePrivateNetwork.fromMap((map['privateNetwork'] as Map).cast<String, dynamic>())).input(),
      region: (map['region'] as String).input(),
      replicationType: (map['replicationType'] as String).input(),
      sslConnection: (map['sslConnection'] as bool).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
      updated: (map['updated'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

