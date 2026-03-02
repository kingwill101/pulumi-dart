// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord {
  /// (Output)
  /// The domain the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String>? domainName;
  /// (Output)
  /// The data of the record. The meaning of the value depends on record type:
  /// - A and AAAA: IP addresses for the domain.
  /// - CNAME: Another domain to check for records.
  /// - TXT: Arbitrary text strings associated with the domain. App Hosting
  /// uses TXT records to determine which Firebase projects have
  /// permission to act on the domain's behalf.
  /// - CAA: The record's flags, tag, and value, e.g. `0 issue "pki.goog"`.
  final pulumi.Input<String>? rdata;
  /// (Output)
  /// An enum that indicates which state(s) this DNS record applies to. Populated
  /// for all records with an `ADD` or `REMOVE` required action.
  final pulumi.Input<List<String>>? relevantStates;
  /// (Output)
  /// An enum that indicates the a required action for this record. Populated
  /// when the record is part of a required change in a  `DnsUpdates`
  /// `discovered` or `desired` record set.
  /// Possible values:
  /// NONE
  /// ADD
  /// REMOVE
  final pulumi.Input<String>? requiredAction;
  /// (Output)
  /// The record's type, which determines what data the record contains.
  /// Possible values:
  /// A
  /// CNAME
  /// TXT
  /// AAAA
  /// CAA
  final pulumi.Input<String>? type;

  /// Creates a new [AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord].
  /// [domainName] (Output)
  /// [rdata] (Output)
  /// [relevantStates] (Output)
  /// [requiredAction] (Output)
  /// [type] (Output)
  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord({
    this.domainName,
    this.rdata,
    this.relevantStates,
    this.requiredAction,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'rdata': ?rdata,
      'relevantStates': ?relevantStates,
      'requiredAction': ?requiredAction,
      'type': ?type,
    };
  }

  factory AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord(
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      rdata: map['rdata'] == null ? null : (map['rdata']! as String).input(),
      relevantStates: map['relevantStates'] == null ? null : ((map['relevantStates']! as List).cast<String>()).input(),
      requiredAction: map['requiredAction'] == null ? null : (map['requiredAction']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

