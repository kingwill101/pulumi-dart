// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'order_v1_meta.dart';

/// {@template pulumi_keymanager_order_v1_order_v1_args_doc}
/// The set of arguments for OrderV1.
/// {@endtemplate}
/// {@macro pulumi_keymanager_order_v1_order_v1_args_doc}
class OrderV1Args {
  /// Dictionary containing the order metadata used to generate the order. The structure is described below.
  final pulumi.Input<OrderV1Meta> meta;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a order. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 order.
  final pulumi.Input<String>? region;
  /// The type of key to be generated. Must be one of `asymmetric`, `key`.
  final pulumi.Input<String> type;

  /// Creates a new [OrderV1Args].
  /// [meta] Dictionary containing the order metadata used to generate the order. The structure is described below.
  /// [region] The region in which to obtain the V1 KeyManager client.
  /// [type] The type of key to be generated. Must be one of `asymmetric`, `key`.
  const OrderV1Args({
    required this.meta,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meta': pulumi.Input.mapInputValue<OrderV1Meta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'region': ?region,
      'type': type,
    };
  }

  factory OrderV1Args.fromMap(Map<String, dynamic> map) {
    return OrderV1Args(
      meta: pulumi.Input.fromValue(OrderV1Meta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

