// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The standard assignment metadata
class StandardAssignmentMetadataResponse {
  /// Standard assignment Created by object id (GUID)
  final pulumi.Input<String> createdBy;
  /// Standard assignment creation date
  final pulumi.Input<String> createdOn;
  /// Standard assignment last updated by object id (GUID)
  final pulumi.Input<String> lastUpdatedBy;
  /// Standard assignment last update date
  final pulumi.Input<String> lastUpdatedOn;

  /// Creates a new [StandardAssignmentMetadataResponse].
  /// [createdBy] Standard assignment Created by object id (GUID)
  /// [createdOn] Standard assignment creation date
  /// [lastUpdatedBy] Standard assignment last updated by object id (GUID)
  /// [lastUpdatedOn] Standard assignment last update date
  const StandardAssignmentMetadataResponse({
    required this.createdBy,
    required this.createdOn,
    required this.lastUpdatedBy,
    required this.lastUpdatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': createdBy,
      'createdOn': createdOn,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedOn': lastUpdatedOn,
    };
  }

  factory StandardAssignmentMetadataResponse.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentMetadataResponse(
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      lastUpdatedBy: pulumi.Input.fromValue(map['lastUpdatedBy'] as String),
      lastUpdatedOn: pulumi.Input.fromValue(map['lastUpdatedOn'] as String),
    );
  }
}

