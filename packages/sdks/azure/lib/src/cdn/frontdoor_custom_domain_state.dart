// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_tls.dart';

/// Input properties used for looking up and filtering FrontdoorCustomDomain resources.
class FrontdoorCustomDomainState {
  /// The ID of the Front Door Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? cdnFrontdoorProfileId;
  /// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain.
  ///
  /// &gt; **Note:** If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
  ///
  /// &lt;!-- * `preValidatedCdnFrontdoorCustomDomainId` - (Optional) The resource ID of the pre-validated Front Door Custom Domain. This domain type is used when you wish to onboard a validated Azure service domain, and then configure the Azure service behind an Azure Front Door.
  ///
  /// &gt; **Note:** Currently `preValidatedCdnFrontdoorCustomDomainId` only supports domains validated by Static Web App. --&gt;
  final pulumi.Input<String?>? dnsZoneId;
  /// The date and time that the token expires.
  final pulumi.Input<String?>? expirationDate;
  /// The host name of the domain. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `hostName` field must be the FQDN of your domain (e.g. `contoso.fabrikam.com`).
  final pulumi.Input<String?>? hostName;
  /// The name which should be used for this Front Door Custom Domain. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `name` must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number, and contain only letters, numbers, and hyphens.
  final pulumi.Input<String?>? name;
  /// A `tls` block as defined below.
  final pulumi.Input<FrontdoorCustomDomainTls?>? tls;
  /// Challenge used for DNS TXT record or file based validation.
  final pulumi.Input<String?>? validationToken;

  /// Creates a new [FrontdoorCustomDomainState].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile. Changing this forces a new resource to be created.
  /// [dnsZoneId] The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain.
  /// [expirationDate] The date and time that the token expires.
  /// [hostName] The host name of the domain. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Front Door Custom Domain. Changing this forces a new resource to be created.
  /// [tls] A `tls` block as defined below.
  /// [validationToken] Challenge used for DNS TXT record or file based validation.
  const FrontdoorCustomDomainState({
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
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZoneId: (() { final guardedValue = map['dnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorCustomDomainTls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationToken: (() { final guardedValue = map['validationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
