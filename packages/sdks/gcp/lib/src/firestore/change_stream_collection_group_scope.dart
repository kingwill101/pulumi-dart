// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChangeStreamCollectionGroupScope {
  /// The ID of the collection group to track.
  final pulumi.Input<String> collectionGroupId;

  /// Creates a new [ChangeStreamCollectionGroupScope].
  /// [collectionGroupId] The ID of the collection group to track.
  const ChangeStreamCollectionGroupScope({
    required this.collectionGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupId': collectionGroupId,
    };
  }

  factory ChangeStreamCollectionGroupScope.fromMap(Map<String, dynamic> map) {
    return ChangeStreamCollectionGroupScope(
      collectionGroupId: pulumi.Input.fromValue(map['collectionGroupId'] as String),
    );
  }
}
