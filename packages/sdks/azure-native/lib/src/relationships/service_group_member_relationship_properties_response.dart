// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_metadata_response.dart';
import 'relationship_origin_information_response.dart';

/// ServiceGroupMember relationship properties.
class ServiceGroupMemberRelationshipPropertiesResponse {
  /// Metadata about the relationship.
  final pulumi.Input<RelationshipMetadataResponse> metadata;
  /// Information about the origin of the relationship.
  final pulumi.Input<RelationshipOriginInformationResponse> originInformation;
  /// The provisioning state of the relationship.
  final pulumi.Input<String> provisioningState;
  /// The relationship source resource id.
  final pulumi.Input<String> sourceId;
  /// The relationship target resource id.
  final pulumi.Input<String> targetId;
  /// The relationship target tenant id.
  final pulumi.Input<String>? targetTenant;

  /// Creates a new [ServiceGroupMemberRelationshipPropertiesResponse].
  /// [metadata] Metadata about the relationship.
  /// [originInformation] Information about the origin of the relationship.
  /// [provisioningState] The provisioning state of the relationship.
  /// [sourceId] The relationship source resource id.
  /// [targetId] The relationship target resource id.
  /// [targetTenant] The relationship target tenant id.
  ServiceGroupMemberRelationshipPropertiesResponse({
    required this.metadata,
    required this.originInformation,
    required this.provisioningState,
    required this.sourceId,
    required this.targetId,
    this.targetTenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': pulumi.Input.mapInputValue<RelationshipMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'originInformation': pulumi.Input.mapInputValue<RelationshipOriginInformationResponse, Map<String, dynamic>>(originInformation, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'sourceId': sourceId,
      'targetId': targetId,
      'targetTenant': ?targetTenant,
    };
  }

  factory ServiceGroupMemberRelationshipPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceGroupMemberRelationshipPropertiesResponse(
      metadata: (RelationshipMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      originInformation: (RelationshipOriginInformationResponse.fromMap((map['originInformation'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      targetId: (map['targetId'] as String).input(),
      targetTenant: map['targetTenant'] == null ? null : (map['targetTenant'] as String).input(),
    );
  }
}

