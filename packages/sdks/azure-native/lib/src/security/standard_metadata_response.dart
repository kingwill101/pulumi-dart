// ignore_for_file: unused_element, unnecessary_cast


/// The standard metadata
class StandardMetadataResponse {
  /// Standard Created by object id (GUID)
  final String createdBy;
  /// Standard creation date
  final String createdOn;
  /// Standard last updated by object id (GUID)
  final String lastUpdatedBy;
  /// Standard last update date
  final String lastUpdatedOn;

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
      createdBy: map['createdBy'] as String,
      createdOn: map['createdOn'] as String,
      lastUpdatedBy: map['lastUpdatedBy'] as String,
      lastUpdatedOn: map['lastUpdatedOn'] as String,
    );
  }
}

