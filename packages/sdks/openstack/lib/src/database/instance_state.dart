// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_database.dart';
import 'instance_datastore.dart';
import 'instance_network.dart';
import 'instance_user.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// A list of IP addresses assigned to the instance.
  final pulumi.Input<List<String>>? addresses;
  /// Configuration ID to be attached to the instance. Database instance
  /// will be rebooted when configuration is detached.
  final pulumi.Input<String>? configurationId;
  /// An array of database name, charset and collate. The database
  /// object structure is documented below.
  final pulumi.Input<List<InstanceDatabase>>? databases;
  /// An array of database engine type and version. The datastore
  /// object structure is documented below. Changing this creates a new instance.
  final pulumi.Input<InstanceDatastore>? datastore;
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
  final pulumi.Input<int>? size;
  /// An array of username, password, host and databases. The user
  /// object structure is documented below.
  final pulumi.Input<List<InstanceUser>>? users;
  /// Specifies the volume type to use. If you want to
  /// specify a volume type, you must also specify a volume size. Changing this
  /// creates new instance.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [InstanceState].
  /// [addresses] A list of IP addresses assigned to the instance.
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
  InstanceState({
    this.addresses,
    this.configurationId,
    this.databases,
    this.datastore,
    this.flavorId,
    this.name,
    this.networks,
    this.region,
    this.size,
    this.users,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'configurationId': ?configurationId,
      'databases': ?pulumi.Input.mapOptionalInputValue<List<InstanceDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<InstanceDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datastore': ?pulumi.Input.mapOptionalInputValue<InstanceDatastore, Map<String, dynamic>>(datastore, (value) => value.toMap()),
      'flavorId': ?flavorId,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<InstanceNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'size': ?size,
      'users': ?pulumi.Input.mapOptionalInputValue<List<InstanceUser>, List<Map<String, dynamic>>>(users, (value) => pulumi.Input.encodeList<InstanceUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeType': ?volumeType,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      configurationId: (() { final guardedValue = map['configurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDatabase>(guardedValue, (value) => InstanceDatabase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datastore: (() { final guardedValue = map['datastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceDatastore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flavorId: (() { final guardedValue = map['flavorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceNetwork>(guardedValue, (value) => InstanceNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceUser>(guardedValue, (value) => InstanceUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

