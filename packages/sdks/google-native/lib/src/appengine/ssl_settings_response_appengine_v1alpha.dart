// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL configuration for a DomainMapping resource.
class SslSettingsResponseAppengineV1alpha {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify no_managed_certificate on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final pulumi.Input<String> certificateId;
  /// Whether the mapped certificate is an App Engine managed certificate. Managed certificates are created by default with a domain mapping. To opt out, specify no_managed_certificate on a CREATE or UPDATE request.
  final pulumi.Input<bool> isManagedCertificate;

  /// Creates a new [SslSettingsResponseAppengineV1alpha].
  /// [certificateId] ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify no_managed_certificate on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  /// [isManagedCertificate] Whether the mapped certificate is an App Engine managed certificate. Managed certificates are created by default with a domain mapping. To opt out, specify no_managed_certificate on a CREATE or UPDATE request.
  const SslSettingsResponseAppengineV1alpha({
    required this.certificateId,
    required this.isManagedCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'isManagedCertificate': isManagedCertificate,
    };
  }

  factory SslSettingsResponseAppengineV1alpha.fromMap(Map<String, dynamic> map) {
    return SslSettingsResponseAppengineV1alpha(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      isManagedCertificate: pulumi.Input.fromValue(map['isManagedCertificate'] as bool),
    );
  }
}
