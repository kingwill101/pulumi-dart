// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_partner_metadata_response.dart';

/// Result data returned by getPartnerTenant.
class GetPartnerTenantResult {
  /// Timestamp when the resource was created.
  final String? createTime;
  /// Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  final String? displayName;
  /// Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse? group;
  /// Unique resource name of the PartnerTenant. The name is ignored when creating PartnerTenant.
  final String? name;
  /// Optional. Metadata provided by the Partner associated with PartnerTenant.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse? partnerMetadata;
  /// Timestamp when the resource was last modified.
  final String? updateTime;

  /// Creates a new [GetPartnerTenantResult].
  /// [createTime] Timestamp when the resource was created.
  /// [displayName] Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  /// [group] Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  /// [name] Unique resource name of the PartnerTenant. The name is ignored when creating PartnerTenant.
  /// [partnerMetadata] Optional. Metadata provided by the Partner associated with PartnerTenant.
  /// [updateTime] Timestamp when the resource was last modified.
  const GetPartnerTenantResult({
    this.createTime,
    this.displayName,
    this.group,
    this.name,
    this.partnerMetadata,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'group': ?group?.toMap(),
      'name': ?name,
      'partnerMetadata': ?partnerMetadata?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetPartnerTenantResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerTenantResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerMetadata: (() { final guardedValue = map['partnerMetadata']; if (guardedValue == null) return null; return GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
