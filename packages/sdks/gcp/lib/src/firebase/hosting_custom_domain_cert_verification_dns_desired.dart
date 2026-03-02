// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert_verification_dns_desired_record.dart';

class HostingCustomDomainCertVerificationDnsDesired {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String>? domainName;
  /// Records on the domain
  /// Structure is documented below.
  final pulumi.Input<List<HostingCustomDomainCertVerificationDnsDesiredRecord>>? records;

  /// Creates a new [HostingCustomDomainCertVerificationDnsDesired].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [records] Records on the domain
  HostingCustomDomainCertVerificationDnsDesired({
    this.domainName,
    this.records,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'records': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainCertVerificationDnsDesiredRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<HostingCustomDomainCertVerificationDnsDesiredRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostingCustomDomainCertVerificationDnsDesired.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDnsDesired(
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      records: map['records'] == null ? null : (pulumi.Input.decodeList<HostingCustomDomainCertVerificationDnsDesiredRecord>(map['records']!, (value) => HostingCustomDomainCertVerificationDnsDesiredRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

