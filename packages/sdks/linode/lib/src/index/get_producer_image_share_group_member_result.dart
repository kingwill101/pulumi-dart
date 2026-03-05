// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProducerImageShareGroupMember.
class GetProducerImageShareGroupMemberResult {
  /// When the member was created.
  final String created;

  /// When the member will expire.
  final String expiry;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The label of the member.
  final String label;
  final int sharegroupId;

  /// The status of the member.
  final String status;
  final String tokenUuid;

  /// When the member was last updated.
  final String updated;

  /// Creates a new [GetProducerImageShareGroupMemberResult].
  /// [created] When the member was created.
  /// [expiry] When the member will expire.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [label] The label of the member.
  /// [sharegroupId] Required.
  /// [status] The status of the member.
  /// [tokenUuid] Required.
  /// [updated] When the member was last updated.
  GetProducerImageShareGroupMemberResult({
    required this.created,
    required this.expiry,
    required this.id,
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
      'id': id,
      'label': label,
      'sharegroupId': sharegroupId,
      'status': status,
      'tokenUuid': tokenUuid,
      'updated': updated,
    };
  }

  factory GetProducerImageShareGroupMemberResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetProducerImageShareGroupMemberResult(
      created: map['created'] as String,
      expiry: map['expiry'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      sharegroupId: map['sharegroupId'] as int,
      status: map['status'] as String,
      tokenUuid: map['tokenUuid'] as String,
      updated: map['updated'] as String,
    );
  }
}
