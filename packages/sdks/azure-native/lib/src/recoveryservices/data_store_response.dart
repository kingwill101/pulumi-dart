// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The datastore details of the MT.
class DataStoreResponse {
  /// The capacity of data store in GBs.
  final pulumi.Input<String>? capacity;
  /// The free space of data store in GBs.
  final pulumi.Input<String>? freeSpace;
  /// The symbolic name of data store.
  final pulumi.Input<String>? symbolicName;
  /// The type of data store.
  final pulumi.Input<String>? type;
  /// The uuid of data store.
  final pulumi.Input<String>? uuid;

  /// Creates a new [DataStoreResponse].
  /// [capacity] The capacity of data store in GBs.
  /// [freeSpace] The free space of data store in GBs.
  /// [symbolicName] The symbolic name of data store.
  /// [type] The type of data store.
  /// [uuid] The uuid of data store.
  DataStoreResponse({
    this.capacity,
    this.freeSpace,
    this.symbolicName,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'freeSpace': ?freeSpace,
      'symbolicName': ?symbolicName,
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory DataStoreResponse.fromMap(Map<String, dynamic> map) {
    return DataStoreResponse(
      capacity: map['capacity'] == null ? null : (map['capacity']! as String).input(),
      freeSpace: map['freeSpace'] == null ? null : (map['freeSpace']! as String).input(),
      symbolicName: map['symbolicName'] == null ? null : (map['symbolicName']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

