// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMappingSslSettings {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will
  /// remove SSL support.
  /// By default, a managed certificate is automatically created for every domain mapping. To omit SSL support
  /// or to configure SSL manually, specify `SslManagementType.MANUAL` on a `CREATE` or `UPDATE` request. You must be
  /// authorized to administer the `AuthorizedCertificate` resource to manually map it to a DomainMapping resource.
  /// Example: 12345.
  final pulumi.Input<String>? certificateId;
  /// (Output)
  /// ID of the managed `AuthorizedCertificate` resource currently being provisioned, if applicable. Until the new
  /// managed certificate has been successfully provisioned, the previous SSL state will be preserved. Once the
  /// provisioning process completes, the `certificateId` field will reflect the new managed certificate and this
  /// field will be left empty. To remove SSL support while there is still a pending managed certificate, clear the
  /// `certificateId` field with an update request.
  final pulumi.Input<String>? pendingManagedCertificateId;
  /// SSL management type for this domain. If `AUTOMATIC`, a managed certificate is automatically provisioned.
  /// If `MANUAL`, `certificateId` must be manually specified in order to configure SSL for this domain.
  /// Possible values are: `AUTOMATIC`, `MANUAL`.
  final pulumi.Input<String> sslManagementType;

  /// Creates a new [DomainMappingSslSettings].
  /// [certificateId] ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will
  /// [pendingManagedCertificateId] (Output)
  /// [sslManagementType] SSL management type for this domain. If `AUTOMATIC`, a managed certificate is automatically provisioned.
  const DomainMappingSslSettings({
    this.certificateId,
    this.pendingManagedCertificateId,
    required this.sslManagementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'pendingManagedCertificateId': ?pendingManagedCertificateId,
      'sslManagementType': sslManagementType,
    };
  }

  factory DomainMappingSslSettings.fromMap(Map<String, dynamic> map) {
    return DomainMappingSslSettings(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pendingManagedCertificateId: (() { final guardedValue = map['pendingManagedCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslManagementType: pulumi.Input.fromValue(map['sslManagementType'] as String),
    );
  }
}

