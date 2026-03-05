// ignore_for_file: unused_element, unnecessary_cast

import 'domain_provisioning_response.dart';
import 'domain_redirect_response.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// The domain name of the association.
  final String domainName;
  /// If set, the domain should redirect with the provided parameters.
  final DomainRedirectResponse domainRedirect;
  /// Information about the provisioning of certificates and the health of the DNS resolution for the domain.
  final DomainProvisioningResponse provisioning;
  /// The site name of the association.
  final String site;
  /// Additional status of the domain association.
  final String status;
  /// The time at which the domain was last updated.
  final String updateTime;

  /// Creates a new [GetDomainResult].
  /// [domainName] The domain name of the association.
  /// [domainRedirect] If set, the domain should redirect with the provided parameters.
  /// [provisioning] Information about the provisioning of certificates and the health of the DNS resolution for the domain.
  /// [site] The site name of the association.
  /// [status] Additional status of the domain association.
  /// [updateTime] The time at which the domain was last updated.
  GetDomainResult({
    required this.domainName,
    required this.domainRedirect,
    required this.provisioning,
    required this.site,
    required this.status,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'domainRedirect': domainRedirect.toMap(),
      'provisioning': provisioning.toMap(),
      'site': site,
      'status': status,
      'updateTime': updateTime,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      domainName: map['domainName'] as String,
      domainRedirect: DomainRedirectResponse.fromMap((map['domainRedirect']! as Map).cast<String, dynamic>()),
      provisioning: DomainProvisioningResponse.fromMap((map['provisioning']! as Map).cast<String, dynamic>()),
      site: map['site'] as String,
      status: map['status'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

