// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_required_dns_update_discovered_record.dart';

class HostingCustomDomainRequiredDnsUpdateDiscovered {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String>? domainName;
  /// Records on the domain
  /// Structure is documented below.
  final pulumi.Input<List<HostingCustomDomainRequiredDnsUpdateDiscoveredRecord>>? records;

  /// Creates a new [HostingCustomDomainRequiredDnsUpdateDiscovered].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [records] Records on the domain
  HostingCustomDomainRequiredDnsUpdateDiscovered({
    this.domainName,
    this.records,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'records': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainRequiredDnsUpdateDiscoveredRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<HostingCustomDomainRequiredDnsUpdateDiscoveredRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostingCustomDomainRequiredDnsUpdateDiscovered.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainRequiredDnsUpdateDiscovered(
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      records: map['records'] == null ? null : (pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdateDiscoveredRecord>(map['records'], (value) => HostingCustomDomainRequiredDnsUpdateDiscoveredRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

