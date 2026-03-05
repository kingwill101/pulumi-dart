// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'order_v1_meta.dart';

/// Input properties used for looking up and filtering OrderV1 resources.
class OrderV1State {
  /// The container reference / where to find the container.
  final pulumi.Input<String>? containerRef;
  /// The date the order was created.
  final pulumi.Input<String>? created;
  /// The creator of the order.
  final pulumi.Input<String>? creatorId;
  /// Dictionary containing the order metadata used to generate the order. The structure is described below.
  final pulumi.Input<OrderV1Meta>? meta;
  /// The order reference / where to find the order.
  final pulumi.Input<String>? orderRef;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a order. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 order.
  final pulumi.Input<String>? region;
  /// The secret reference / where to find the secret.
  final pulumi.Input<String>? secretRef;
  /// The status of the order.
  final pulumi.Input<String>? status;
  /// The sub status of the order.
  final pulumi.Input<String>? subStatus;
  /// The sub status message of the order.
  final pulumi.Input<String>? subStatusMessage;
  /// The type of key to be generated. Must be one of `asymmetric`, `key`.
  final pulumi.Input<String>? type;
  /// The date the order was last updated.
  final pulumi.Input<String>? updated;

  /// Creates a new [OrderV1State].
  /// [containerRef] The container reference / where to find the container.
  /// [created] The date the order was created.
  /// [creatorId] The creator of the order.
  /// [meta] Dictionary containing the order metadata used to generate the order. The structure is described below.
  /// [orderRef] The order reference / where to find the order.
  /// [region] The region in which to obtain the V1 KeyManager client.
  /// [secretRef] The secret reference / where to find the secret.
  /// [status] The status of the order.
  /// [subStatus] The sub status of the order.
  /// [subStatusMessage] The sub status message of the order.
  /// [type] The type of key to be generated. Must be one of `asymmetric`, `key`.
  /// [updated] The date the order was last updated.
  OrderV1State({
    this.containerRef,
    this.created,
    this.creatorId,
    this.meta,
    this.orderRef,
    this.region,
    this.secretRef,
    this.status,
    this.subStatus,
    this.subStatusMessage,
    this.type,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRef': ?containerRef,
      'created': ?created,
      'creatorId': ?creatorId,
      'meta': ?pulumi.Input.mapOptionalInputValue<OrderV1Meta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'orderRef': ?orderRef,
      'region': ?region,
      'secretRef': ?secretRef,
      'status': ?status,
      'subStatus': ?subStatus,
      'subStatusMessage': ?subStatusMessage,
      'type': ?type,
      'updated': ?updated,
    };
  }

  factory OrderV1State.fromMap(Map<String, dynamic> map) {
    return OrderV1State(
      containerRef: (() { final guardedValue = map['containerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creatorId: (() { final guardedValue = map['creatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrderV1Meta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orderRef: (() { final guardedValue = map['orderRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subStatus: (() { final guardedValue = map['subStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subStatusMessage: (() { final guardedValue = map['subStatusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

