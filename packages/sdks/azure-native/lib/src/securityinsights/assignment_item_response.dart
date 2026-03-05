// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An entity describing a content item.
class AssignmentItemResponse {
  /// The resource id of the content item
  final pulumi.Input<String>? resourceId;

  /// Creates a new [AssignmentItemResponse].
  /// [resourceId] The resource id of the content item
  AssignmentItemResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory AssignmentItemResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentItemResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

