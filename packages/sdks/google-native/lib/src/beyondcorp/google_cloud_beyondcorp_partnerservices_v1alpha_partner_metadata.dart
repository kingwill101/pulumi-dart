// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata associated with PartnerTenant and is provided by the Partner.
class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata {
  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final pulumi.Input<String>? internalTenantId;
  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final pulumi.Input<String>? partnerTenantId;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata].
  /// [internalTenantId] Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  /// [partnerTenantId] Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata({
    this.internalTenantId,
    this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalTenantId': ?internalTenantId,
      'partnerTenantId': ?partnerTenantId,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata(
      internalTenantId: map['internalTenantId'] == null ? null : (map['internalTenantId'] as String).input(),
      partnerTenantId: map['partnerTenantId'] == null ? null : (map['partnerTenantId'] as String).input(),
    );
  }
}

