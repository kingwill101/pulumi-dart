// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QuotaV2 resources.
class QuotaV2State {
  /// The maximum number of zones that can be
  /// exported via the API.
  final pulumi.Input<int>? apiExportSize;
  /// ID of the project to manage quota. Changing this
  /// creates new quota.
  final pulumi.Input<String>? projectId;
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

  /// Creates a new [QuotaV2State].
  /// [apiExportSize] The maximum number of zones that can be
  /// [projectId] ID of the project to manage quota. Changing this
  /// [recordsetRecords] The maximum number of records in a
  /// [region] The region in which to obtain the V2 DNS client. If
  /// [zoneRecords] The maximum number of records in a zone.
  /// [zoneRecordsets] The maximum number of recordsets in a zone.
  /// [zones] The maximum number of zones that can be created.
  QuotaV2State({
    this.apiExportSize,
    this.projectId,
    this.recordsetRecords,
    this.region,
    this.zoneRecords,
    this.zoneRecordsets,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiExportSize': ?apiExportSize,
      'projectId': ?projectId,
      'recordsetRecords': ?recordsetRecords,
      'region': ?region,
      'zoneRecords': ?zoneRecords,
      'zoneRecordsets': ?zoneRecordsets,
      'zones': ?zones,
    };
  }

  factory QuotaV2State.fromMap(Map<String, dynamic> map) {
    return QuotaV2State(
      apiExportSize: map['apiExportSize'] == null ? null : (map['apiExportSize']! as int).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      recordsetRecords: map['recordsetRecords'] == null ? null : (map['recordsetRecords']! as int).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      zoneRecords: map['zoneRecords'] == null ? null : (map['zoneRecords']! as int).input(),
      zoneRecordsets: map['zoneRecordsets'] == null ? null : (map['zoneRecordsets']! as int).input(),
      zones: map['zones'] == null ? null : (map['zones']! as int).input(),
    );
  }
}

