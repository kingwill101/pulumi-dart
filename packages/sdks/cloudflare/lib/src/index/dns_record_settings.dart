// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DnsRecordSettings {
  /// If enabled, causes the CNAME record to be resolved externally and the resulting address records (e.g., A and AAAA) to be returned instead of the CNAME record itself. This setting is unavailable for proxied records, since they are always flattened.
  final pulumi.Input<bool?>? flattenCname;
  /// When enabled, only A records will be generated, and AAAA records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  final pulumi.Input<bool?>? ipv4Only;
  /// When enabled, only AAAA records will be generated, and A records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  final pulumi.Input<bool?>? ipv6Only;

  /// Creates a new [DnsRecordSettings].
  /// [flattenCname] If enabled, causes the CNAME record to be resolved externally and the resulting address records (e.g., A and AAAA) to be returned instead of the CNAME record itself. This setting is unavailable for proxied records, since they are always flattened.
  /// [ipv4Only] When enabled, only A records will be generated, and AAAA records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  /// [ipv6Only] When enabled, only AAAA records will be generated, and A records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  const DnsRecordSettings({
    this.flattenCname,
    this.ipv4Only,
    this.ipv6Only,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flattenCname': ?flattenCname,
      'ipv4Only': ?ipv4Only,
      'ipv6Only': ?ipv6Only,
    };
  }

  factory DnsRecordSettings.fromMap(Map<String, dynamic> map) {
    return DnsRecordSettings(
      flattenCname: (() { final guardedValue = map['flattenCname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv4Only: (() { final guardedValue = map['ipv4Only']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6Only: (() { final guardedValue = map['ipv6Only']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
