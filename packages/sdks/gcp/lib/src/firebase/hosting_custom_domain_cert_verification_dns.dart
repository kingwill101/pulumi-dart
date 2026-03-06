// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert_verification_dns_desired.dart';
import 'hosting_custom_domain_cert_verification_dns_discovered.dart';

class HostingCustomDomainCertVerificationDns {
  /// (Output)
  /// The last time Hosting checked your CustomDomain's DNS records.
  final pulumi.Input<String>? checkTime;
  /// A text string to serve at the path.
  final pulumi.Input<List<HostingCustomDomainCertVerificationDnsDesired>>? desireds;
  /// Whether Hosting was able to find the required file contents on the
  /// specified path during its last check.
  final pulumi.Input<List<HostingCustomDomainCertVerificationDnsDiscovered>>? discovereds;

  /// Creates a new [HostingCustomDomainCertVerificationDns].
  /// [checkTime] (Output)
  /// [desireds] A text string to serve at the path.
  /// [discovereds] Whether Hosting was able to find the required file contents on the
  const HostingCustomDomainCertVerificationDns({
    this.checkTime,
    this.desireds,
    this.discovereds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkTime': ?checkTime,
      'desireds': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainCertVerificationDnsDesired>, List<Map<String, dynamic>>>(desireds, (value) => pulumi.Input.encodeList<HostingCustomDomainCertVerificationDnsDesired, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discovereds': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainCertVerificationDnsDiscovered>, List<Map<String, dynamic>>>(discovereds, (value) => pulumi.Input.encodeList<HostingCustomDomainCertVerificationDnsDiscovered, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostingCustomDomainCertVerificationDns.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDns(
      checkTime: (() { final guardedValue = map['checkTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desireds: (() { final guardedValue = map['desireds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainCertVerificationDnsDesired>(guardedValue, (value) => HostingCustomDomainCertVerificationDnsDesired.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discovereds: (() { final guardedValue = map['discovereds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainCertVerificationDnsDiscovered>(guardedValue, (value) => HostingCustomDomainCertVerificationDnsDiscovered.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

