// ignore_for_file: unused_element, unnecessary_cast

import 'relationship_metadata_response.dart';
import 'relationship_origin_information_response.dart';

/// dependencyOf relationship properties.
class DependencyOfRelationshipPropertiesResponse {
  /// Metadata about the relationship.
  final RelationshipMetadataResponse metadata;
  /// Information about the origin of the relationship.
  final RelationshipOriginInformationResponse originInformation;
  /// The provisioning state of the relationship.
  final String provisioningState;
  /// The relationship source resource id.
  final String sourceId;
  /// The relationship target resource id.
  final String targetId;
  /// The relationship target tenant id.
  final String? targetTenant;

  /// Creates a new [DependencyOfRelationshipPropertiesResponse].
  /// [metadata] Metadata about the relationship.
  /// [originInformation] Information about the origin of the relationship.
  /// [provisioningState] The provisioning state of the relationship.
  /// [sourceId] The relationship source resource id.
  /// [targetId] The relationship target resource id.
  /// [targetTenant] The relationship target tenant id.
  DependencyOfRelationshipPropertiesResponse({
    required this.metadata,
    required this.originInformation,
    required this.provisioningState,
    required this.sourceId,
    required this.targetId,
    this.targetTenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': metadata.toMap(),
      'originInformation': originInformation.toMap(),
      'provisioningState': provisioningState,
      'sourceId': sourceId,
      'targetId': targetId,
      'targetTenant': ?targetTenant,
    };
  }

  factory DependencyOfRelationshipPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DependencyOfRelationshipPropertiesResponse(
      metadata: RelationshipMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      originInformation: RelationshipOriginInformationResponse.fromMap((map['originInformation'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      sourceId: map['sourceId'] as String,
      targetId: map['targetId'] as String,
      targetTenant: map['targetTenant'] == null ? null : map['targetTenant'] as String,
    );
  }
}

