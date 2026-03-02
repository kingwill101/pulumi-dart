// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL configuration for a DomainMapping resource.
class SslSettingsResponse {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final pulumi.Input<String> certificateId;
  /// ID of the managed AuthorizedCertificate resource currently being provisioned, if applicable. Until the new managed certificate has been successfully provisioned, the previous SSL state will be preserved. Once the provisioning process completes, the certificate_id field will reflect the new managed certificate and this field will be left empty. To remove SSL support while there is still a pending managed certificate, clear the certificate_id field with an UpdateDomainMappingRequest.
  final pulumi.Input<String> pendingManagedCertificateId;
  /// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  final pulumi.Input<String> sslManagementType;

  /// Creates a new [SslSettingsResponse].
  /// [certificateId] ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  /// [pendingManagedCertificateId] ID of the managed AuthorizedCertificate resource currently being provisioned, if applicable. Until the new managed certificate has been successfully provisioned, the previous SSL state will be preserved. Once the provisioning process completes, the certificate_id field will reflect the new managed certificate and this field will be left empty. To remove SSL support while there is still a pending managed certificate, clear the certificate_id field with an UpdateDomainMappingRequest.
  /// [sslManagementType] SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  SslSettingsResponse({
    required this.certificateId,
    required this.pendingManagedCertificateId,
    required this.sslManagementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'pendingManagedCertificateId': pendingManagedCertificateId,
      'sslManagementType': sslManagementType,
    };
  }

  factory SslSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SslSettingsResponse(
      certificateId: (map['certificateId'] as String).input(),
      pendingManagedCertificateId: (map['pendingManagedCertificateId'] as String).input(),
      sslManagementType: (map['sslManagementType'] as String).input(),
    );
  }
}

