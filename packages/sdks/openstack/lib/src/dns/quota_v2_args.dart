// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_quota_v2_quota_v2_args_doc}
/// The set of arguments for QuotaV2.
/// {@endtemplate}
/// {@macro pulumi_dns_quota_v2_quota_v2_args_doc}
class QuotaV2Args {
  /// The maximum number of zones that can be
  /// exported via the API.
  final pulumi.Input<int>? apiExportSize;

  /// ID of the project to manage quota. Changing this
  /// creates new quota.
  final pulumi.Input<String> projectId;

  /// The maximum number of records in a
  /// recordset.
  final pulumi.Input<int>? recordsetRecords;

  /// The region in which to obtain the V2 DNS client. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new DNS quota.
  final pulumi.Input<String>? region;

  /// The maximum number of records in a zone.
  final pulumi.Input<int>? zoneRecords;

  /// The maximum number of recordsets in a zone.
  final pulumi.Input<int>? zoneRecordsets;

  /// The maximum number of zones that can be created.
  final pulumi.Input<int>? zones;

  /// Creates a new [QuotaV2Args].
  /// [apiExportSize] The maximum number of zones that can be
  /// [projectId] ID of the project to manage quota. Changing this
  /// [recordsetRecords] The maximum number of records in a
  /// [region] The region in which to obtain the V2 DNS client. If
  /// [zoneRecords] The maximum number of records in a zone.
  /// [zoneRecordsets] The maximum number of recordsets in a zone.
  /// [zones] The maximum number of zones that can be created.
  QuotaV2Args({
    this.apiExportSize,
    required this.projectId,
    this.recordsetRecords,
    this.region,
    this.zoneRecords,
    this.zoneRecordsets,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiExportSize': ?apiExportSize,
      'projectId': projectId,
      'recordsetRecords': ?recordsetRecords,
      'region': ?region,
      'zoneRecords': ?zoneRecords,
      'zoneRecordsets': ?zoneRecordsets,
      'zones': ?zones,
    };
  }

  factory QuotaV2Args.fromMap(Map<String, dynamic> map) {
    return QuotaV2Args(
      apiExportSize: (() {
        final guardedValue = map['apiExportSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      recordsetRecords: (() {
        final guardedValue = map['recordsetRecords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneRecords: (() {
        final guardedValue = map['zoneRecords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      zoneRecordsets: (() {
        final guardedValue = map['zoneRecordsets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
