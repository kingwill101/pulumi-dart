// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_custom_domain_tl.dart';

/// Result data returned by getFrontdoorCustomDomain.
class GetFrontdoorCustomDomainResult {
  /// The ID of the Front Door Profile which the Front Door Custom Domain is bound to.
  final String? cdnFrontdoorProfileId;
  /// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain.
  final String? dnsZoneId;
  /// The date and time that the token expires.
  final String? expirationDate;
  /// The host name of the domain.
  final String? hostName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? profileName;
  final String? resourceGroupName;
  /// A `tls` block as defined below.
  final List<GetFrontdoorCustomDomainTl>? tls;
  /// The challenge used for DNS TXT record or file based validation.
  final String? validationToken;

  /// Creates a new [GetFrontdoorCustomDomainResult].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile which the Front Door Custom Domain is bound to.
  /// [dnsZoneId] The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain.
  /// [expirationDate] The date and time that the token expires.
  /// [hostName] The host name of the domain.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [profileName] Optional.
  /// [resourceGroupName] Optional.
  /// [tls] A `tls` block as defined below.
  /// [validationToken] The challenge used for DNS TXT record or file based validation.
  const GetFrontdoorCustomDomainResult({
    this.cdnFrontdoorProfileId,
    this.dnsZoneId,
    this.expirationDate,
    this.hostName,
    this.id,
    this.name,
    this.profileName,
    this.resourceGroupName,
    this.tls,
    this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'dnsZoneId': ?dnsZoneId,
      'expirationDate': ?expirationDate,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': ?resourceGroupName,
      'tls': ?(() { final guardedValue = tls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrontdoorCustomDomainTl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'validationToken': ?validationToken,
    };
  }

  factory GetFrontdoorCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorCustomDomainResult(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsZoneId: (() { final guardedValue = map['dnsZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrontdoorCustomDomainTl>(guardedValue, (value) => GetFrontdoorCustomDomainTl.fromMap((value as Map).cast<String, dynamic>())); })(),
      validationToken: (() { final guardedValue = map['validationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
