// ignore_for_file: unused_element, unnecessary_cast

import 'domain_provisioning_response.dart';
import 'domain_redirect_response.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// The domain name of the association.
  final String? domainName;
  /// If set, the domain should redirect with the provided parameters.
  final DomainRedirectResponse? domainRedirect;
  /// Information about the provisioning of certificates and the health of the DNS resolution for the domain.
  final DomainProvisioningResponse? provisioning;
  /// The site name of the association.
  final String? site;
  /// Additional status of the domain association.
  final String? status;
  /// The time at which the domain was last updated.
  final String? updateTime;

  /// Creates a new [GetDomainResult].
  /// [domainName] The domain name of the association.
  /// [domainRedirect] If set, the domain should redirect with the provided parameters.
  /// [provisioning] Information about the provisioning of certificates and the health of the DNS resolution for the domain.
  /// [site] The site name of the association.
  /// [status] Additional status of the domain association.
  /// [updateTime] The time at which the domain was last updated.
  const GetDomainResult({
    this.domainName,
    this.domainRedirect,
    this.provisioning,
    this.site,
    this.status,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'domainRedirect': ?domainRedirect?.toMap(),
      'provisioning': ?provisioning?.toMap(),
      'site': ?site,
      'status': ?status,
      'updateTime': ?updateTime,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainRedirect: (() { final guardedValue = map['domainRedirect']; if (guardedValue == null) return null; return DomainRedirectResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioning: (() { final guardedValue = map['provisioning']; if (guardedValue == null) return null; return DomainProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
