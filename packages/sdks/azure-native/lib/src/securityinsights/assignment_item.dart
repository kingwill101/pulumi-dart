// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An entity describing a content item.
class AssignmentItem {
  /// The resource id of the content item
  final pulumi.Input<String>? resourceId;

  /// Creates a new [AssignmentItem].
  /// [resourceId] The resource id of the content item
  const AssignmentItem({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory AssignmentItem.fromMap(Map<String, dynamic> map) {
    return AssignmentItem(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

