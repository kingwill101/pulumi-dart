// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_raw_data_response.dart';
import 'managed_certificate_response.dart';

/// Result data returned by getAuthorizedCertificate.
class GetAuthorizedCertificateResult {
  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final CertificateRawDataResponse certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final String displayName;

  /// Aggregate count of the domain mappings with this certificate mapped. This count includes domain mappings on applications for which the user does not have VIEWER permissions.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  final int domainMappingsCount;

  /// Topmost applicable domains of this certificate. This certificate applies to these domains and their subdomains. Example: example.com.
  final List<String> domainNames;

  /// The time when this certificate expires. To update the renewal time on this certificate, upload an SSL certificate with a different expiration time using AuthorizedCertificates.UpdateAuthorizedCertificate.
  final String expireTime;

  /// Only applicable if this certificate is managed by App Engine. Managed certificates are tied to the lifecycle of a DomainMapping and cannot be updated or deleted via the AuthorizedCertificates API. If this certificate is manually administered by the user, this field will be empty.
  final ManagedCertificateResponse managedCertificate;

  /// Full path to the AuthorizedCertificate resource in the API. Example: apps/myapp/authorizedCertificates/12345.
  final String name;

  /// The full paths to user visible Domain Mapping resources that have this certificate mapped. Example: apps/myapp/domainMappings/example.com.This may not represent the full list of mapped domain mappings if the user does not have VIEWER permissions on all of the applications that have this certificate mapped. See domain_mappings_count for a complete count.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  final List<String> visibleDomainMappings;

  /// Creates a new [GetAuthorizedCertificateResult].
  /// [certificateRawData] The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  /// [displayName] The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  /// [domainMappingsCount] Aggregate count of the domain mappings with this certificate mapped. This count includes domain mappings on applications for which the user does not have VIEWER permissions.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  /// [domainNames] Topmost applicable domains of this certificate. This certificate applies to these domains and their subdomains. Example: example.com.
  /// [expireTime] The time when this certificate expires. To update the renewal time on this certificate, upload an SSL certificate with a different expiration time using AuthorizedCertificates.UpdateAuthorizedCertificate.
  /// [managedCertificate] Only applicable if this certificate is managed by App Engine. Managed certificates are tied to the lifecycle of a DomainMapping and cannot be updated or deleted via the AuthorizedCertificates API. If this certificate is manually administered by the user, this field will be empty.
  /// [name] Full path to the AuthorizedCertificate resource in the API. Example: apps/myapp/authorizedCertificates/12345.
  /// [visibleDomainMappings] The full paths to user visible Domain Mapping resources that have this certificate mapped. Example: apps/myapp/domainMappings/example.com.This may not represent the full list of mapped domain mappings if the user does not have VIEWER permissions on all of the applications that have this certificate mapped. See domain_mappings_count for a complete count.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  GetAuthorizedCertificateResult({
    required this.certificateRawData,
    required this.displayName,
    required this.domainMappingsCount,
    required this.domainNames,
    required this.expireTime,
    required this.managedCertificate,
    required this.name,
    required this.visibleDomainMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateRawData': certificateRawData.toMap(),
      'displayName': displayName,
      'domainMappingsCount': domainMappingsCount,
      'domainNames': domainNames,
      'expireTime': expireTime,
      'managedCertificate': managedCertificate.toMap(),
      'name': name,
      'visibleDomainMappings': visibleDomainMappings,
    };
  }

  factory GetAuthorizedCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedCertificateResult(
      certificateRawData: CertificateRawDataResponse.fromMap(
        (map['certificateRawData']! as Map).cast<String, dynamic>(),
      ),
      displayName: map['displayName'] as String,
      domainMappingsCount: map['domainMappingsCount'] as int,
      domainNames: (map['domainNames'] as List).cast<String>(),
      expireTime: map['expireTime'] as String,
      managedCertificate: ManagedCertificateResponse.fromMap(
        (map['managedCertificate']! as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      visibleDomainMappings: (map['visibleDomainMappings'] as List)
          .cast<String>(),
    );
  }
}
