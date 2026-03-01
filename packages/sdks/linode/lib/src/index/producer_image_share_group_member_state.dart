// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProducerImageShareGroupMember resources.
class ProducerImageShareGroupMemberState {
  /// When the member was created.
  final pulumi.Input<String>? created;
  /// When the member will expire.
  final pulumi.Input<String>? expiry;
  /// A label for the member.
  final pulumi.Input<String>? label;
  /// The ID of the Image Share Group to which the member will be added.
  final pulumi.Input<int>? sharegroupId;
  /// The status of the member.
  final pulumi.Input<String>? status;
  /// The token of the prospective member.
  final pulumi.Input<String>? token;
  /// The UUID of member's token.
  final pulumi.Input<String>? tokenUuid;
  /// When the member was last updated.
  final pulumi.Input<String>? updated;

  /// Creates a new [ProducerImageShareGroupMemberState].
  /// [created] When the member was created.
  /// [expiry] When the member will expire.
  /// [label] A label for the member.
  /// [sharegroupId] The ID of the Image Share Group to which the member will be added.
  /// [status] The status of the member.
  /// [token] The token of the prospective member.
  /// [tokenUuid] The UUID of member's token.
  /// [updated] When the member was last updated.
  ProducerImageShareGroupMemberState({
    pulumi.Output<String>? created,
    pulumi.Output<String>? expiry,
    pulumi.Output<String>? label,
    pulumi.Output<int>? sharegroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? token,
    pulumi.Output<String>? tokenUuid,
    pulumi.Output<String>? updated,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      expiry = pulumi.Input.asOptionalInput<String>(expiry),
      label = pulumi.Input.asOptionalInput<String>(label),
      sharegroupId = pulumi.Input.asOptionalInput<int>(sharegroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      token = pulumi.Input.asOptionalInput<String>(token),
      tokenUuid = pulumi.Input.asOptionalInput<String>(tokenUuid),
      updated = pulumi.Input.asOptionalInput<String>(updated);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'expiry': ?expiry,
      'label': ?label,
      'sharegroupId': ?sharegroupId,
      'status': ?status,
      'token': ?token,
      'tokenUuid': ?tokenUuid,
      'updated': ?updated,
    };
  }

  factory ProducerImageShareGroupMemberState.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupMemberState(
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      expiry: map['expiry'] == null ? null : pulumi.Output.create<String>(map['expiry'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      sharegroupId: map['sharegroupId'] == null ? null : pulumi.Output.create<int>(map['sharegroupId'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      tokenUuid: map['tokenUuid'] == null ? null : pulumi.Output.create<String>(map['tokenUuid'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
    );
  }
}

