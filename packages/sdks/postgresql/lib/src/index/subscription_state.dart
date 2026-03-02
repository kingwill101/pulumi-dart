// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
  /// The connection string to the publisher. It should follow the [keyword/value format](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING)
  final pulumi.Input<String>? conninfo;
  /// Specifies whether the command should create the replication slot on the publisher. Default behavior is true
  final pulumi.Input<bool>? createSlot;
  /// Which database to create the subscription on. Defaults to provider database.
  final pulumi.Input<String>? database;
  /// The name of the publication.
  final pulumi.Input<String>? name;
  /// Names of the publications on the publisher to subscribe to
  final pulumi.Input<List<String>>? publications;
  /// Name of the replication slot to use. The default behavior is to use the name of the subscription for the slot name
  final pulumi.Input<String>? slotName;

  /// Creates a new [SubscriptionState].
  /// [conninfo] The connection string to the publisher. It should follow the [keyword/value format](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING)
  /// [createSlot] Specifies whether the command should create the replication slot on the publisher. Default behavior is true
  /// [database] Which database to create the subscription on. Defaults to provider database.
  /// [name] The name of the publication.
  /// [publications] Names of the publications on the publisher to subscribe to
  /// [slotName] Name of the replication slot to use. The default behavior is to use the name of the subscription for the slot name
  SubscriptionState({
    this.conninfo,
    this.createSlot,
    this.database,
    this.name,
    this.publications,
    this.slotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conninfo': ?conninfo,
      'createSlot': ?createSlot,
      'database': ?database,
      'name': ?name,
      'publications': ?publications,
      'slotName': ?slotName,
    };
  }

  factory SubscriptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionState(
      conninfo: map['conninfo'] == null ? null : (map['conninfo']! as String).input(),
      createSlot: map['createSlot'] == null ? null : (map['createSlot']! as bool).input(),
      database: map['database'] == null ? null : (map['database']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publications: map['publications'] == null ? null : ((map['publications']! as List).cast<String>()).input(),
      slotName: map['slotName'] == null ? null : (map['slotName']! as String).input(),
    );
  }
}

