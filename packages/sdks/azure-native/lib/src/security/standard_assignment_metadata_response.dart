// ignore_for_file: unused_element, unnecessary_cast


/// The standard assignment metadata
class StandardAssignmentMetadataResponse {
  /// Standard assignment Created by object id (GUID)
  final String createdBy;
  /// Standard assignment creation date
  final String createdOn;
  /// Standard assignment last updated by object id (GUID)
  final String lastUpdatedBy;
  /// Standard assignment last update date
  final String lastUpdatedOn;

  /// Creates a new [StandardAssignmentMetadataResponse].
  /// [createdBy] Standard assignment Created by object id (GUID)
  /// [createdOn] Standard assignment creation date
  /// [lastUpdatedBy] Standard assignment last updated by object id (GUID)
  /// [lastUpdatedOn] Standard assignment last update date
  StandardAssignmentMetadataResponse({
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
      createdBy: map['createdBy'] as String,
      createdOn: map['createdOn'] as String,
      lastUpdatedBy: map['lastUpdatedBy'] as String,
      lastUpdatedOn: map['lastUpdatedOn'] as String,
    );
  }
}

