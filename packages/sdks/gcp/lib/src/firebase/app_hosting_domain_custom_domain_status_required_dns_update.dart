// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_custom_domain_status_required_dns_update_desired.dart';
import 'app_hosting_domain_custom_domain_status_required_dns_update_discovered.dart';

class AppHostingDomainCustomDomainStatusRequiredDnsUpdate {
  /// (Output)
  /// The last time App Hosting checked your custom domain's DNS records.
  final pulumi.Input<String>? checkTime;
  /// (Output)
  /// The set of DNS records App Hosting needs in order to be able to serve
  /// secure content on the domain.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired>>? desireds;
  /// (Output)
  /// The set of DNS records App Hosting discovered when inspecting a domain.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered>>? discovereds;
  /// (Output)
  /// The domain the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String>? domainName;

  /// Creates a new [AppHostingDomainCustomDomainStatusRequiredDnsUpdate].
  /// [checkTime] (Output)
  /// [desireds] (Output)
  /// [discovereds] (Output)
  /// [domainName] (Output)
  AppHostingDomainCustomDomainStatusRequiredDnsUpdate({
    this.checkTime,
    this.desireds,
    this.discovereds,
    this.domainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkTime': ?checkTime,
      'desireds': ?pulumi.Input.mapOptionalInputValue<List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired>, List<Map<String, dynamic>>>(desireds, (value) => pulumi.Input.encodeList<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discovereds': ?pulumi.Input.mapOptionalInputValue<List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered>, List<Map<String, dynamic>>>(discovereds, (value) => pulumi.Input.encodeList<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainName': ?domainName,
    };
  }

  factory AppHostingDomainCustomDomainStatusRequiredDnsUpdate.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainCustomDomainStatusRequiredDnsUpdate(
      checkTime: map['checkTime'] == null ? null : (map['checkTime'] as String).input(),
      desireds: map['desireds'] == null ? null : (pulumi.Input.decodeList<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired>(map['desireds'], (value) => AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discovereds: map['discovereds'] == null ? null : (pulumi.Input.decodeList<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered>(map['discovereds'], (value) => AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered.fromMap((value as Map).cast<String, dynamic>()))).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
    );
  }
}

