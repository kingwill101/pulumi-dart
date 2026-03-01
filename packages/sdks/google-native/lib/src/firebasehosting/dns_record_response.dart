// ignore_for_file: unused_element, unnecessary_cast


/// DNS records are resource records that define how systems and services should behave when handling requests for a domain name. For example, when you add `A` records to your domain name's DNS records, you're informing other systems (such as your users' web browsers) to contact those IPv4 addresses to retrieve resources relevant to your domain name (such as your Hosting site files).
class DnsRecordResponse {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final String domainName;
  /// The data of the record. The meaning of the value depends on record type: - A and AAAA: IP addresses for the domain name. - CNAME: Another domain to check for records. - TXT: Arbitrary text strings associated with the domain name. Hosting uses TXT records to determine which Firebase projects have permission to act on the domain name's behalf. - CAA: The record's flags, tag, and value, e.g. `0 issue "pki.goog"`.
  final String rdata;
  /// An enum that indicates the a required action for this record.
  final String requiredAction;
  /// The record's type, which determines what data the record contains.
  final String type;

  /// Creates a new [DnsRecordResponse].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [rdata] The data of the record. The meaning of the value depends on record type: - A and AAAA: IP addresses for the domain name. - CNAME: Another domain to check for records. - TXT: Arbitrary text strings associated with the domain name. Hosting uses TXT records to determine which Firebase projects have permission to act on the domain name's behalf. - CAA: The record's flags, tag, and value, e.g. `0 issue "pki.goog"`.
  /// [requiredAction] An enum that indicates the a required action for this record.
  /// [type] The record's type, which determines what data the record contains.
  DnsRecordResponse({
    required this.domainName,
    required this.rdata,
    required this.requiredAction,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'rdata': rdata,
      'requiredAction': requiredAction,
      'type': type,
    };
  }

  factory DnsRecordResponse.fromMap(Map<String, dynamic> map) {
    return DnsRecordResponse(
      domainName: map['domainName'] as String,
      rdata: map['rdata'] as String,
      requiredAction: map['requiredAction'] as String,
      type: map['type'] as String,
    );
  }
}

