// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata associated with PartnerTenant and is provided by the Partner.
class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse {
  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final pulumi.Input<String> internalTenantId;
  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final pulumi.Input<String> partnerTenantId;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse].
  /// [internalTenantId] Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  /// [partnerTenantId] Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse({
    required this.internalTenantId,
    required this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalTenantId': internalTenantId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse(
      internalTenantId: pulumi.Input.fromValue(map['internalTenantId'] as String),
      partnerTenantId: pulumi.Input.fromValue(map['partnerTenantId'] as String),
    );
  }
}

