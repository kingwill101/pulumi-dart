// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_tls.dart';

/// {@template pulumi_cdn_frontdoor_custom_domain_frontdoor_custom_domain_args_doc}
/// The set of arguments for FrontdoorCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_custom_domain_frontdoor_custom_domain_args_doc}
class FrontdoorCustomDomainArgs {
  /// The ID of the Front Door Profile. Changing this forces a new Front Door Custom Domain to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;

  /// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
  ///
  /// &lt;!-- * `pre_validated_cdn_frontdoor_custom_domain_id` - (Optional) The resource ID of the pre-validated Front Door Custom Domain. This domain type is used when you wish to onboard a validated Azure service domain, and then configure the Azure service behind an Azure Front Door.
  ///
  /// &gt; **Note:** Currently `pre_validated_cdn_frontdoor_custom_domain_id` only supports domains validated by Static Web App. --&gt;
  final pulumi.Input<String>? dnsZoneId;

  /// The host name of the domain. The `host_name` field must be the FQDN of your domain(e.g. `contoso.fabrikam.com`). Changing this forces a new Front Door Custom Domain to be created.
  final pulumi.Input<String> hostName;

  /// The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created.
  final pulumi.Input<String>? name;

  /// A `tls` block as defined below.
  final pulumi.Input<FrontdoorCustomDomainTls> tls;

  /// Creates a new [FrontdoorCustomDomainArgs].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile. Changing this forces a new Front Door Custom Domain to be created.
  /// [dnsZoneId] The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
  /// [hostName] The host name of the domain. The `host_name` field must be the FQDN of your domain(e.g. `contoso.fabrikam.com`). Changing this forces a new Front Door Custom Domain to be created.
  /// [name] The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created.
  /// [tls] A `tls` block as defined below.
  FrontdoorCustomDomainArgs({
    required this.cdnFrontdoorProfileId,
    this.dnsZoneId,
    required this.hostName,
    this.name,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'dnsZoneId': ?dnsZoneId,
      'hostName': hostName,
      'name': ?name,
      'tls':
          pulumi.Input.mapInputValue<
            FrontdoorCustomDomainTls,
            Map<String, dynamic>
          >(tls, (value) => value.toMap()),
    };
  }

  factory FrontdoorCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainArgs(
      cdnFrontdoorProfileId: pulumi.Input.fromValue(
        map['cdnFrontdoorProfileId'] as String,
      ),
      dnsZoneId: (() {
        final guardedValue = map['dnsZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tls: pulumi.Input.fromValue(
        FrontdoorCustomDomainTls.fromMap(
          (map['tls']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
