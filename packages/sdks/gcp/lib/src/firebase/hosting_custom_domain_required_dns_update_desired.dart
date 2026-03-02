// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_required_dns_update_desired_record.dart';

class HostingCustomDomainRequiredDnsUpdateDesired {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String>? domainName;
  /// Records on the domain
  /// Structure is documented below.
  final pulumi.Input<List<HostingCustomDomainRequiredDnsUpdateDesiredRecord>>? records;

  /// Creates a new [HostingCustomDomainRequiredDnsUpdateDesired].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [records] Records on the domain
  HostingCustomDomainRequiredDnsUpdateDesired({
    this.domainName,
    this.records,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'records': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainRequiredDnsUpdateDesiredRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<HostingCustomDomainRequiredDnsUpdateDesiredRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostingCustomDomainRequiredDnsUpdateDesired.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainRequiredDnsUpdateDesired(
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      records: map['records'] == null ? null : (pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdateDesiredRecord>(map['records'], (value) => HostingCustomDomainRequiredDnsUpdateDesiredRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

