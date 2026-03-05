// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_index_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// The connection string to the publisher. It should follow the [keyword/value format](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING)
  final pulumi.Input<String> conninfo;
  /// Specifies whether the command should create the replication slot on the publisher. Default behavior is true
  final pulumi.Input<bool>? createSlot;
  /// Which database to create the subscription on. Defaults to provider database.
  final pulumi.Input<String>? database;
  /// The name of the publication.
  final pulumi.Input<String>? name;
  /// Names of the publications on the publisher to subscribe to
  final pulumi.Input<List<String>> publications;
  /// Name of the replication slot to use. The default behavior is to use the name of the subscription for the slot name
  final pulumi.Input<String>? slotName;

  /// Creates a new [SubscriptionArgs].
  /// [conninfo] The connection string to the publisher. It should follow the [keyword/value format](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING)
  /// [createSlot] Specifies whether the command should create the replication slot on the publisher. Default behavior is true
  /// [database] Which database to create the subscription on. Defaults to provider database.
  /// [name] The name of the publication.
  /// [publications] Names of the publications on the publisher to subscribe to
  /// [slotName] Name of the replication slot to use. The default behavior is to use the name of the subscription for the slot name
  SubscriptionArgs({
    required this.conninfo,
    this.createSlot,
    this.database,
    this.name,
    required this.publications,
    this.slotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conninfo': conninfo,
      'createSlot': ?createSlot,
      'database': ?database,
      'name': ?name,
      'publications': publications,
      'slotName': ?slotName,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      conninfo: pulumi.Input.fromValue(map['conninfo'] as String),
      createSlot: (() { final guardedValue = map['createSlot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publications: pulumi.Input.fromValue((map['publications'] as List).cast<String>()),
      slotName: (() { final guardedValue = map['slotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

