// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsRecordMeta {
  /// Whether this glue record is not served because a shallower NS delegation takes precedence over the deeper delegation that needs it. Present only when true; reachable glue carries only `isGlue`. See [Unreachable glue records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records#unreachable-glue-records).
  final pulumi.Input<bool> deadGlue;
  /// Whether this A or AAAA record is glue for a subdomain NS delegation. See [Glue records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records#glue-records).
  final pulumi.Input<bool> isGlue;
  /// IDs of the NS records that shadow this record. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final pulumi.Input<List<String>> shadowedBies;
  /// Number of records shadowed by this NS delegation. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final pulumi.Input<int> shadowedRecordsCount;

  /// Creates a new [GetDnsRecordMeta].
  /// [deadGlue] Whether this glue record is not served because a shallower NS delegation takes precedence over the deeper delegation that needs it. Present only when true; reachable glue carries only `isGlue`. See [Unreachable glue records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records#unreachable-glue-records).
  /// [isGlue] Whether this A or AAAA record is glue for a subdomain NS delegation. See [Glue records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records#glue-records).
  /// [shadowedBies] IDs of the NS records that shadow this record. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [shadowedRecordsCount] Number of records shadowed by this NS delegation. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  const GetDnsRecordMeta({
    required this.deadGlue,
    required this.isGlue,
    required this.shadowedBies,
    required this.shadowedRecordsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadGlue': deadGlue,
      'isGlue': isGlue,
      'shadowedBies': shadowedBies,
      'shadowedRecordsCount': shadowedRecordsCount,
    };
  }

  factory GetDnsRecordMeta.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordMeta(
      deadGlue: pulumi.Input.fromValue(map['deadGlue'] as bool),
      isGlue: pulumi.Input.fromValue(map['isGlue'] as bool),
      shadowedBies: pulumi.Input.fromValue((map['shadowedBies'] as List).cast<String>()),
      shadowedRecordsCount: pulumi.Input.fromValue((map['shadowedRecordsCount'] as num).toInt()),
    );
  }
}
