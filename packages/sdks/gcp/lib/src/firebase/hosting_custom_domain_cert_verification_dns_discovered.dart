// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert_verification_dns_discovered_record.dart';

class HostingCustomDomainCertVerificationDnsDiscovered {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String>? domainName;
  /// Records on the domain
  /// Structure is documented below.
  final pulumi.Input<List<HostingCustomDomainCertVerificationDnsDiscoveredRecord>>? records;

  /// Creates a new [HostingCustomDomainCertVerificationDnsDiscovered].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [records] Records on the domain
  HostingCustomDomainCertVerificationDnsDiscovered({
    this.domainName,
    this.records,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'records': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainCertVerificationDnsDiscoveredRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<HostingCustomDomainCertVerificationDnsDiscoveredRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostingCustomDomainCertVerificationDnsDiscovered.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDnsDiscovered(
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      records: map['records'] == null ? null : (pulumi.Input.decodeList<HostingCustomDomainCertVerificationDnsDiscoveredRecord>(map['records'], (value) => HostingCustomDomainCertVerificationDnsDiscoveredRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

