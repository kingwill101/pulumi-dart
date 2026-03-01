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
  OrderV1Args({
    required pulumi.Output<OrderV1Meta> meta,
    pulumi.Output<String>? region,
    required pulumi.Output<String> type,
  }) :
      meta = pulumi.Input.asInput<OrderV1Meta>(meta),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meta': pulumi.Input.mapInputValue<OrderV1Meta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'region': ?region,
      'type': type,
    };
  }

  factory OrderV1Args.fromMap(Map<String, dynamic> map) {
    return OrderV1Args(
      meta: pulumi.Output.create<OrderV1Meta>(OrderV1Meta.fromMap((map['meta'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

