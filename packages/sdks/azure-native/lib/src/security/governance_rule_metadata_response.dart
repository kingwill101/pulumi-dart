// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The governance rule metadata
class GovernanceRuleMetadataResponse {
  /// Governance rule Created by object id (GUID)
  final pulumi.Input<String> createdBy;
  /// Governance rule creation date
  final pulumi.Input<String> createdOn;
  /// Governance rule last updated by object id (GUID)
  final pulumi.Input<String> updatedBy;
  /// Governance rule last update date
  final pulumi.Input<String> updatedOn;

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
      createdBy: (map['createdBy'] as String).input(),
      createdOn: (map['createdOn'] as String).input(),
      updatedBy: (map['updatedBy'] as String).input(),
      updatedOn: (map['updatedOn'] as String).input(),
    );
  }
}

