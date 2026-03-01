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
    pulumi.Output<String>? conninfo,
    pulumi.Output<bool>? createSlot,
    pulumi.Output<String>? database,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? publications,
    pulumi.Output<String>? slotName,
  }) :
      conninfo = pulumi.Input.asOptionalInput<String>(conninfo),
      createSlot = pulumi.Input.asOptionalInput<bool>(createSlot),
      database = pulumi.Input.asOptionalInput<String>(database),
      name = pulumi.Input.asOptionalInput<String>(name),
      publications = pulumi.Input.asOptionalInput<List<String>>(publications),
      slotName = pulumi.Input.asOptionalInput<String>(slotName);

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
      conninfo: map['conninfo'] == null ? null : pulumi.Output.create<String>(map['conninfo'] as String),
      createSlot: map['createSlot'] == null ? null : pulumi.Output.create<bool>(map['createSlot'] as bool),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publications: map['publications'] == null ? null : pulumi.Output.create<List<String>>((map['publications'] as List).cast<String>()),
      slotName: map['slotName'] == null ? null : pulumi.Output.create<String>(map['slotName'] as String),
    );
  }
}

