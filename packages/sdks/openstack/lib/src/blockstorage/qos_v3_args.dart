// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_qos_v3_qos_v3_args_doc}
/// The set of arguments for QosV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_qos_v3_qos_v3_args_doc}
class QosV3Args {
  /// The consumer of qos. Can be one of `front-end`,
  /// `back-end` or `both`. Changing this updates the `consumer` of an
  /// existing qos.
  final pulumi.Input<String>? consumer;
  /// Name of the qos.  Changing this creates a new qos.
  final pulumi.Input<String>? name;
  /// The region in which to create the qos. If omitted,
  /// the `region` argument of the provider is used. Changing this creates
  /// a new qos.
  final pulumi.Input<String>? region;
  /// Key/Value pairs of specs for the qos.
  final pulumi.Input<Map<String, String>>? specs;

  /// Creates a new [QosV3Args].
  /// [consumer] The consumer of qos. Can be one of `front-end`,
  /// [name] Name of the qos.  Changing this creates a new qos.
  /// [region] The region in which to create the qos. If omitted,
  /// [specs] Key/Value pairs of specs for the qos.
  QosV3Args({
    this.consumer,
    this.name,
    this.region,
    this.specs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumer': ?consumer,
      'name': ?name,
      'region': ?region,
      'specs': ?specs,
    };
  }

  factory QosV3Args.fromMap(Map<String, dynamic> map) {
    return QosV3Args(
      consumer: (() { final guardedValue = map['consumer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specs: (() { final guardedValue = map['specs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

