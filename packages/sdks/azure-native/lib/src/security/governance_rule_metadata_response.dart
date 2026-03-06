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
  const GovernanceRuleMetadataResponse({
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
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      updatedBy: pulumi.Input.fromValue(map['updatedBy'] as String),
      updatedOn: pulumi.Input.fromValue(map['updatedOn'] as String),
    );
  }
}

