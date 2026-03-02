// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_required_dns_update_desired.dart';
import 'hosting_custom_domain_required_dns_update_discovered.dart';

class HostingCustomDomainRequiredDnsUpdate {
  /// (Output)
  /// The last time Hosting checked your CustomDomain's DNS records.
  final pulumi.Input<String>? checkTime;
  /// A text string to serve at the path.
  final pulumi.Input<List<HostingCustomDomainRequiredDnsUpdateDesired>>? desireds;
  /// Whether Hosting was able to find the required file contents on the
  /// specified path during its last check.
  final pulumi.Input<List<HostingCustomDomainRequiredDnsUpdateDiscovered>>? discovereds;

  /// Creates a new [HostingCustomDomainRequiredDnsUpdate].
  /// [checkTime] (Output)
  /// [desireds] A text string to serve at the path.
  /// [discovereds] Whether Hosting was able to find the required file contents on the
  HostingCustomDomainRequiredDnsUpdate({
    this.checkTime,
    this.desireds,
    this.discovereds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkTime': ?checkTime,
      'desireds': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainRequiredDnsUpdateDesired>, List<Map<String, dynamic>>>(desireds, (value) => pulumi.Input.encodeList<HostingCustomDomainRequiredDnsUpdateDesired, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discovereds': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainRequiredDnsUpdateDiscovered>, List<Map<String, dynamic>>>(discovereds, (value) => pulumi.Input.encodeList<HostingCustomDomainRequiredDnsUpdateDiscovered, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostingCustomDomainRequiredDnsUpdate.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainRequiredDnsUpdate(
      checkTime: map['checkTime'] == null ? null : (map['checkTime']! as String).input(),
      desireds: map['desireds'] == null ? null : (pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdateDesired>(map['desireds']!, (value) => HostingCustomDomainRequiredDnsUpdateDesired.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discovereds: map['discovereds'] == null ? null : (pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdateDiscovered>(map['discovereds']!, (value) => HostingCustomDomainRequiredDnsUpdateDiscovered.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

