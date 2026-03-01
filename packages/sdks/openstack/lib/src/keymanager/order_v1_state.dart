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
    pulumi.Output<String>? containerRef,
    pulumi.Output<String>? created,
    pulumi.Output<String>? creatorId,
    pulumi.Output<OrderV1Meta>? meta,
    pulumi.Output<String>? orderRef,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretRef,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subStatus,
    pulumi.Output<String>? subStatusMessage,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updated,
  }) :
      containerRef = pulumi.Input.asOptionalInput<String>(containerRef),
      created = pulumi.Input.asOptionalInput<String>(created),
      creatorId = pulumi.Input.asOptionalInput<String>(creatorId),
      meta = pulumi.Input.asOptionalInput<OrderV1Meta>(meta),
      orderRef = pulumi.Input.asOptionalInput<String>(orderRef),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretRef = pulumi.Input.asOptionalInput<String>(secretRef),
      status = pulumi.Input.asOptionalInput<String>(status),
      subStatus = pulumi.Input.asOptionalInput<String>(subStatus),
      subStatusMessage = pulumi.Input.asOptionalInput<String>(subStatusMessage),
      type = pulumi.Input.asOptionalInput<String>(type),
      updated = pulumi.Input.asOptionalInput<String>(updated);

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
      containerRef: map['containerRef'] == null ? null : pulumi.Output.create<String>(map['containerRef'] as String),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      creatorId: map['creatorId'] == null ? null : pulumi.Output.create<String>(map['creatorId'] as String),
      meta: map['meta'] == null ? null : pulumi.Output.create<OrderV1Meta>(OrderV1Meta.fromMap((map['meta'] as Map).cast<String, dynamic>())),
      orderRef: map['orderRef'] == null ? null : pulumi.Output.create<String>(map['orderRef'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretRef: map['secretRef'] == null ? null : pulumi.Output.create<String>(map['secretRef'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subStatus: map['subStatus'] == null ? null : pulumi.Output.create<String>(map['subStatus'] as String),
      subStatusMessage: map['subStatusMessage'] == null ? null : pulumi.Output.create<String>(map['subStatusMessage'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
    );
  }
}

