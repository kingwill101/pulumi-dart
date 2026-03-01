// ignore_for_file: unused_element, unnecessary_cast


class GetProducerImageShareGroupMembersMember {
  /// When the member was created.
  final String created;
  /// When the member will expire.
  final String expiry;
  /// The label of the member.
  final String label;
  /// The ID of the Image Share Group for which to list members.
  final int sharegroupId;
  /// The status of the member.
  final String status;
  /// The UUID of member's token.
  final String tokenUuid;
  /// When the member was last updated.
  final String updated;

  /// Creates a new [GetProducerImageShareGroupMembersMember].
  /// [created] When the member was created.
  /// [expiry] When the member will expire.
  /// [label] The label of the member.
  /// [sharegroupId] The ID of the Image Share Group for which to list members.
  /// [status] The status of the member.
  /// [tokenUuid] The UUID of member's token.
  /// [updated] When the member was last updated.
  GetProducerImageShareGroupMembersMember({
    required this.created,
    required this.expiry,
    required this.label,
    required this.sharegroupId,
    required this.status,
    required this.tokenUuid,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'expiry': expiry,
      'label': label,
      'sharegroupId': sharegroupId,
      'status': status,
      'tokenUuid': tokenUuid,
      'updated': updated,
    };
  }

  factory GetProducerImageShareGroupMembersMember.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupMembersMember(
      created: map['created'] as String,
      expiry: map['expiry'] as String,
      label: map['label'] as String,
      sharegroupId: map['sharegroupId'] as int,
      status: map['status'] as String,
      tokenUuid: map['tokenUuid'] as String,
      updated: map['updated'] as String,
    );
  }
}

