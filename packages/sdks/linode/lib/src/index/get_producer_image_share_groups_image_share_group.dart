// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProducerImageShareGroupsImageShareGroup {
  /// The date and time the Image Share Group was created.
  final pulumi.Input<String> created;
  /// The description of the Image Share Group.
  final pulumi.Input<String> description;
  /// The date and time the Image Share Group will expire.
  final pulumi.Input<String> expiry;
  /// The ID of the Image Share Group.
  final pulumi.Input<int> id;
  /// The number of images in the Image Share Group.
  final pulumi.Input<int> imagesCount;
  /// Whether the Image Share Group is suspended.
  final pulumi.Input<bool> isSuspended;
  /// The label of the Image Share Group.
  final pulumi.Input<String> label;
  /// The number of members in the Image Share Group.
  final pulumi.Input<int> membersCount;
  /// The date and time the Image Share Group was last updated.
  final pulumi.Input<String> updated;
  /// The UUID of the Image Share Group.
  final pulumi.Input<String> uuid;

  /// Creates a new [GetProducerImageShareGroupsImageShareGroup].
  /// [created] The date and time the Image Share Group was created.
  /// [description] The description of the Image Share Group.
  /// [expiry] The date and time the Image Share Group will expire.
  /// [id] The ID of the Image Share Group.
  /// [imagesCount] The number of images in the Image Share Group.
  /// [isSuspended] Whether the Image Share Group is suspended.
  /// [label] The label of the Image Share Group.
  /// [membersCount] The number of members in the Image Share Group.
  /// [updated] The date and time the Image Share Group was last updated.
  /// [uuid] The UUID of the Image Share Group.
  const GetProducerImageShareGroupsImageShareGroup({
    required this.created,
    required this.description,
    required this.expiry,
    required this.id,
    required this.imagesCount,
    required this.isSuspended,
    required this.label,
    required this.membersCount,
    required this.updated,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'description': description,
      'expiry': expiry,
      'id': id,
      'imagesCount': imagesCount,
      'isSuspended': isSuspended,
      'label': label,
      'membersCount': membersCount,
      'updated': updated,
      'uuid': uuid,
    };
  }

  factory GetProducerImageShareGroupsImageShareGroup.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupsImageShareGroup(
      created: pulumi.Input.fromValue(map['created'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      imagesCount: pulumi.Input.fromValue(map['imagesCount'] as int),
      isSuspended: pulumi.Input.fromValue(map['isSuspended'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      membersCount: pulumi.Input.fromValue(map['membersCount'] as int),
      updated: pulumi.Input.fromValue(map['updated'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

