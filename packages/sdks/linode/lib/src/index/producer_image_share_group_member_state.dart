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
    this.created,
    this.expiry,
    this.label,
    this.sharegroupId,
    this.status,
    this.token,
    this.tokenUuid,
    this.updated,
  });

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
      created: map['created'] == null ? null : (map['created'] as String).input(),
      expiry: map['expiry'] == null ? null : (map['expiry'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      sharegroupId: map['sharegroupId'] == null ? null : (map['sharegroupId'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
      tokenUuid: map['tokenUuid'] == null ? null : (map['tokenUuid'] as String).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
    );
  }
}

