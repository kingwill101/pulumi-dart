// ignore_for_file: unused_element, unnecessary_cast


/// The governance rule metadata
class GovernanceRuleMetadataResponse {
  /// Governance rule Created by object id (GUID)
  final String createdBy;
  /// Governance rule creation date
  final String createdOn;
  /// Governance rule last updated by object id (GUID)
  final String updatedBy;
  /// Governance rule last update date
  final String updatedOn;

  /// Creates a new [GovernanceRuleMetadataResponse].
  /// [createdBy] Governance rule Created by object id (GUID)
  /// [createdOn] Governance rule creation date
  /// [updatedBy] Governance rule last updated by object id (GUID)
  /// [updatedOn] Governance rule last update date
  GovernanceRuleMetadataResponse({
    required this.createdBy,
    required this.createdOn,
    required this.updatedBy,
    required this.updatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': createdBy,
      'createdOn': createdOn,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }

  factory GovernanceRuleMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GovernanceRuleMetadataResponse(
      createdBy: map['createdBy'] as String,
      createdOn: map['createdOn'] as String,
      updatedBy: map['updatedBy'] as String,
      updatedOn: map['updatedOn'] as String,
    );
  }
}

