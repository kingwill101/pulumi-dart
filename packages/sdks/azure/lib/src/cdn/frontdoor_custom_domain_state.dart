// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_tls.dart';

/// Input properties used for looking up and filtering FrontdoorCustomDomain resources.
class FrontdoorCustomDomainState {
  /// The ID of the Front Door Profile. Changing this forces a new Front Door Custom Domain to be created.
  final pulumi.Input<String>? cdnFrontdoorProfileId;
  /// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
  ///
  /// <!-- * `pre_validated_cdn_frontdoor_custom_domain_id` - (Optional) The resource ID of the pre-validated Front Door Custom Domain. This domain type is used when you wish to onboard a validated Azure service domain, and then configure the Azure service behind an Azure Front Door.
  ///
  /// > **Note:** Currently `pre_validated_cdn_frontdoor_custom_domain_id` only supports domains validated by Static Web App. -->
  final pulumi.Input<String>? dnsZoneId;
  /// The date time that the token expires.
  final pulumi.Input<String>? expirationDate;
  /// The host name of the domain. The `host_name` field must be the FQDN of your domain(e.g. `contoso.fabrikam.com`). Changing this forces a new Front Door Custom Domain to be created.
  final pulumi.Input<String>? hostName;
  /// The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created.
  final pulumi.Input<String>? name;
  /// A `tls` block as defined below.
  final pulumi.Input<FrontdoorCustomDomainTls>? tls;
  /// Challenge used for DNS TXT record or file based validation.
  final pulumi.Input<String>? validationToken;

  /// Creates a new [FrontdoorCustomDomainState].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile. Changing this forces a new Front Door Custom Domain to be created.
  /// [dnsZoneId] The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
  /// [expirationDate] The date time that the token expires.
  /// [hostName] The host name of the domain. The `host_name` field must be the FQDN of your domain(e.g. `contoso.fabrikam.com`). Changing this forces a new Front Door Custom Domain to be created.
  /// [name] The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created.
  /// [tls] A `tls` block as defined below.
  /// [validationToken] Challenge used for DNS TXT record or file based validation.
  FrontdoorCustomDomainState({
    this.cdnFrontdoorProfileId,
    this.dnsZoneId,
    this.expirationDate,
    this.hostName,
    this.name,
    this.tls,
    this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'dnsZoneId': ?dnsZoneId,
      'expirationDate': ?expirationDate,
      'hostName': ?hostName,
      'name': ?name,
      'tls': ?pulumi.Input.mapOptionalInputValue<FrontdoorCustomDomainTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'validationToken': ?validationToken,
    };
  }

  factory FrontdoorCustomDomainState.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainState(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] == null ? null : (map['cdnFrontdoorProfileId'] as String).input(),
      dnsZoneId: map['dnsZoneId'] == null ? null : (map['dnsZoneId'] as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tls: map['tls'] == null ? null : (FrontdoorCustomDomainTls.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
      validationToken: map['validationToken'] == null ? null : (map['validationToken'] as String).input(),
    );
  }
}

