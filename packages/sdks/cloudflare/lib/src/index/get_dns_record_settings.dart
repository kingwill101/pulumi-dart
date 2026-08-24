// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsRecordSettings {
  /// If enabled, causes the CNAME record to be resolved externally and the resulting address records (e.g., A and AAAA) to be returned instead of the CNAME record itself. This setting is unavailable for proxied records, since they are always flattened.
  final pulumi.Input<bool> flattenCname;
  /// When enabled, only A records will be generated, and AAAA records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  final pulumi.Input<bool> ipv4Only;
  /// When enabled, only AAAA records will be generated, and A records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  final pulumi.Input<bool> ipv6Only;

  /// Creates a new [GetDnsRecordSettings].
  /// [flattenCname] If enabled, causes the CNAME record to be resolved externally and the resulting address records (e.g., A and AAAA) to be returned instead of the CNAME record itself. This setting is unavailable for proxied records, since they are always flattened.
  /// [ipv4Only] When enabled, only A records will be generated, and AAAA records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  /// [ipv6Only] When enabled, only AAAA records will be generated, and A records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
  const GetDnsRecordSettings({
    required this.flattenCname,
    required this.ipv4Only,
    required this.ipv6Only,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flattenCname': flattenCname,
      'ipv4Only': ipv4Only,
      'ipv6Only': ipv6Only,
    };
  }

  factory GetDnsRecordSettings.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordSettings(
      flattenCname: pulumi.Input.fromValue(map['flattenCname'] as bool),
      ipv4Only: pulumi.Input.fromValue(map['ipv4Only'] as bool),
      ipv6Only: pulumi.Input.fromValue(map['ipv6Only'] as bool),
    );
  }
}
