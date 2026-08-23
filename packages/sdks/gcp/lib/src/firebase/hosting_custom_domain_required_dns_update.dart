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
  const HostingCustomDomainRequiredDnsUpdate({
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
      checkTime: (() { final guardedValue = map['checkTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desireds: (() { final guardedValue = map['desireds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdateDesired>(guardedValue, (value) => HostingCustomDomainRequiredDnsUpdateDesired.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discovereds: (() { final guardedValue = map['discovereds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdateDiscovered>(guardedValue, (value) => HostingCustomDomainRequiredDnsUpdateDiscovered.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
