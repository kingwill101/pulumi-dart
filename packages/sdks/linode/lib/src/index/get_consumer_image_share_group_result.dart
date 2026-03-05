// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConsumerImageShareGroup.
class GetConsumerImageShareGroupResult {
  /// The date and time the Image Share Group was created.
  final String created;

  /// The description of the Image Share Group.
  final String description;

  /// The ID of the Image Share Group.
  final int id;

  /// Whether the Image Share Group is suspended.
  final bool isSuspended;

  /// The label of the Image Share Group.
  final String label;
  final String tokenUuid;

  /// The date and time the Image Share Group was last updated.
  final String updated;

  /// The UUID of the Image Share Group.
  final String uuid;

  /// Creates a new [GetConsumerImageShareGroupResult].
  /// [created] The date and time the Image Share Group was created.
  /// [description] The description of the Image Share Group.
  /// [id] The ID of the Image Share Group.
  /// [isSuspended] Whether the Image Share Group is suspended.
  /// [label] The label of the Image Share Group.
  /// [tokenUuid] Required.
  /// [updated] The date and time the Image Share Group was last updated.
  /// [uuid] The UUID of the Image Share Group.
  GetConsumerImageShareGroupResult({
    required this.created,
    required this.description,
    required this.id,
    required this.isSuspended,
    required this.label,
    required this.tokenUuid,
    required this.updated,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'description': description,
      'id': id,
      'isSuspended': isSuspended,
      'label': label,
      'tokenUuid': tokenUuid,
      'updated': updated,
      'uuid': uuid,
    };
  }

  factory GetConsumerImageShareGroupResult.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupResult(
      created: map['created'] as String,
      description: map['description'] as String,
      id: map['id'] as int,
      isSuspended: map['isSuspended'] as bool,
      label: map['label'] as String,
      tokenUuid: map['tokenUuid'] as String,
      updated: map['updated'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
