// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The standard metadata
class StandardMetadataResponse {
  /// Standard Created by object id (GUID)
  final pulumi.Input<String> createdBy;

  /// Standard creation date
  final pulumi.Input<String> createdOn;

  /// Standard last updated by object id (GUID)
  final pulumi.Input<String> lastUpdatedBy;

  /// Standard last update date
  final pulumi.Input<String> lastUpdatedOn;

  /// Creates a new [StandardMetadataResponse].
  /// [createdBy] Standard Created by object id (GUID)
  /// [createdOn] Standard creation date
  /// [lastUpdatedBy] Standard last updated by object id (GUID)
  /// [lastUpdatedOn] Standard last update date
  StandardMetadataResponse({
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

  factory StandardMetadataResponse.fromMap(Map<String, dynamic> map) {
    return StandardMetadataResponse(
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      lastUpdatedBy: pulumi.Input.fromValue(map['lastUpdatedBy'] as String),
      lastUpdatedOn: pulumi.Input.fromValue(map['lastUpdatedOn'] as String),
    );
  }
}
