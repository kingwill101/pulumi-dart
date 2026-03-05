// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_custom_domain_tl.dart';

/// Result data returned by getFrontdoorCustomDomain.
class GetFrontdoorCustomDomainResult {
  /// The ID of the Front Door Profile which the Front Door Custom Domain is bound to.
  final String cdnFrontdoorProfileId;
  final String dnsZoneId;
  /// The date time that the token expires.
  final String expirationDate;
  /// The host name of the domain.
  final String hostName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String profileName;
  final String resourceGroupName;
  /// A `tls` block as defined below.
  final List<GetFrontdoorCustomDomainTl> tls;
  /// The challenge used for DNS TXT record or file based validation.
  final String validationToken;

  /// Creates a new [GetFrontdoorCustomDomainResult].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile which the Front Door Custom Domain is bound to.
  /// [dnsZoneId] Required.
  /// [expirationDate] The date time that the token expires.
  /// [hostName] The host name of the domain.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [profileName] Required.
  /// [resourceGroupName] Required.
  /// [tls] A `tls` block as defined below.
  /// [validationToken] The challenge used for DNS TXT record or file based validation.
  GetFrontdoorCustomDomainResult({
    required this.cdnFrontdoorProfileId,
    required this.dnsZoneId,
    required this.expirationDate,
    required this.hostName,
    required this.id,
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
    required this.tls,
    required this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'dnsZoneId': dnsZoneId,
      'expirationDate': expirationDate,
      'hostName': hostName,
      'id': id,
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'tls': pulumi.Input.encodeList<GetFrontdoorCustomDomainTl, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'validationToken': validationToken,
    };
  }

  factory GetFrontdoorCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorCustomDomainResult(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] as String,
      dnsZoneId: map['dnsZoneId'] as String,
      expirationDate: map['expirationDate'] as String,
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tls: pulumi.Input.decodeList<GetFrontdoorCustomDomainTl>(map['tls']!, (value) => GetFrontdoorCustomDomainTl.fromMap((value as Map).cast<String, dynamic>())),
      validationToken: map['validationToken'] as String,
    );
  }
}

