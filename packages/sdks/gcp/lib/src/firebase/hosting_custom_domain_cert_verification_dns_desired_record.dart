// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HostingCustomDomainCertVerificationDnsDesiredRecord {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String?>? domainName;
  /// The data of the record. The meaning of the value depends on record type:
  /// - A and AAAA: IP addresses for the domain name.
  /// - CNAME: Another domain to check for records.
  /// - TXT: Arbitrary text strings associated with the domain name. Hosting
  /// uses TXT records to determine a which Firebase Projects have
  /// permission to act on the domain name's behalf.
  /// - CAA: The record's flags, tag, and value, e.g. `0 issue "pki.goog"`.
  final pulumi.Input<String?>? rdata;
  /// Indicates the a required action for this record.
  final pulumi.Input<String?>? requiredAction;
  /// The record's type, which determines what data the record contains.
  final pulumi.Input<String?>? type;

  /// Creates a new [HostingCustomDomainCertVerificationDnsDesiredRecord].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [rdata] The data of the record. The meaning of the value depends on record type:
  /// [requiredAction] Indicates the a required action for this record.
  /// [type] The record's type, which determines what data the record contains.
  const HostingCustomDomainCertVerificationDnsDesiredRecord({
    this.domainName,
    this.rdata,
    this.requiredAction,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'rdata': ?rdata,
      'requiredAction': ?requiredAction,
      'type': ?type,
    };
  }

  factory HostingCustomDomainCertVerificationDnsDesiredRecord.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDnsDesiredRecord(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdata: (() { final guardedValue = map['rdata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredAction: (() { final guardedValue = map['requiredAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
