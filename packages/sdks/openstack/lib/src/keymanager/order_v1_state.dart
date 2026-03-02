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
      containerRef: map['containerRef'] == null ? null : (map['containerRef']! as String).input(),
      created: map['created'] == null ? null : (map['created']! as String).input(),
      creatorId: map['creatorId'] == null ? null : (map['creatorId']! as String).input(),
      meta: map['meta'] == null ? null : (OrderV1Meta.fromMap((map['meta']! as Map).cast<String, dynamic>())).input(),
      orderRef: map['orderRef'] == null ? null : (map['orderRef']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      secretRef: map['secretRef'] == null ? null : (map['secretRef']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      subStatus: map['subStatus'] == null ? null : (map['subStatus']! as String).input(),
      subStatusMessage: map['subStatusMessage'] == null ? null : (map['subStatusMessage']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      updated: map['updated'] == null ? null : (map['updated']! as String).input(),
    );
  }
}

