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
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdateDiscoveredRecord>(guardedValue, (value) => HostingCustomDomainRequiredDnsUpdateDiscoveredRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

