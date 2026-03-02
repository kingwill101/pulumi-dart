// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_database.dart';
import 'instance_datastore.dart';
import 'instance_network.dart';
import 'instance_user.dart';

/// {@template pulumi_database_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_database_instance_instance_args_doc}
class InstanceArgs {
  /// Configuration ID to be attached to the instance. Database instance
  /// will be rebooted when configuration is detached.
  final pulumi.Input<String>? configurationId;
  /// An array of database name, charset and collate. The database
  /// object structure is documented below.
  final pulumi.Input<List<InstanceDatabase>>? databases;
  /// An array of database engine type and version. The datastore
  /// object structure is documented below. Changing this creates a new instance.
  final pulumi.Input<InstanceDatastore> datastore;
  /// The flavor ID of the desired flavor for the instance.
  /// Changing this creates new instance.
  final pulumi.Input<String>? flavorId;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// An array of one or more networks to attach to the
  /// instance. The network object structure is documented below. Changing this
  /// creates a new instance.
  final pulumi.Input<List<InstanceNetwork>>? networks;
  /// The region in which to create the db instance. Changing this
  /// creates a new instance.
  final pulumi.Input<String>? region;
  /// Specifies the volume size in GB. Changing this creates new instance.
  final pulumi.Input<int> size;
  /// An array of username, password, host and databases. The user
  /// object structure is documented below.
  final pulumi.Input<List<InstanceUser>>? users;
  /// Specifies the volume type to use. If you want to
  /// specify a volume type, you must also specify a volume size. Changing this
  /// creates new instance.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [InstanceArgs].
  /// [configurationId] Configuration ID to be attached to the instance. Database instance
  /// [databases] An array of database name, charset and collate. The database
  /// [datastore] An array of database engine type and version. The datastore
  /// [flavorId] The flavor ID of the desired flavor for the instance.
  /// [name] A unique name for the resource.
  /// [networks] An array of one or more networks to attach to the
  /// [region] The region in which to create the db instance. Changing this
  /// [size] Specifies the volume size in GB. Changing this creates new instance.
  /// [users] An array of username, password, host and databases. The user
  /// [volumeType] Specifies the volume type to use. If you want to
  InstanceArgs({
    this.configurationId,
    this.databases,
    required this.datastore,
    this.flavorId,
    this.name,
    this.networks,
    this.region,
    required this.size,
    this.users,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationId': ?configurationId,
      'databases': ?pulumi.Input.mapOptionalInputValue<List<InstanceDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<InstanceDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datastore': pulumi.Input.mapInputValue<InstanceDatastore, Map<String, dynamic>>(datastore, (value) => value.toMap()),
      'flavorId': ?flavorId,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<InstanceNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'size': size,
      'users': ?pulumi.Input.mapOptionalInputValue<List<InstanceUser>, List<Map<String, dynamic>>>(users, (value) => pulumi.Input.encodeList<InstanceUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeType': ?volumeType,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      configurationId: map['configurationId'] == null ? null : (map['configurationId']! as String).input(),
      databases: map['databases'] == null ? null : (pulumi.Input.decodeList<InstanceDatabase>(map['databases']!, (value) => InstanceDatabase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      datastore: (InstanceDatastore.fromMap((map['datastore'] as Map).cast<String, dynamic>())).input(),
      flavorId: map['flavorId'] == null ? null : (map['flavorId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networks: map['networks'] == null ? null : (pulumi.Input.decodeList<InstanceNetwork>(map['networks']!, (value) => InstanceNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      size: (map['size'] as int).input(),
      users: map['users'] == null ? null : (pulumi.Input.decodeList<InstanceUser>(map['users']!, (value) => InstanceUser.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType']! as String).input(),
    );
  }
}

