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
      apiExportSize: (() {
        final guardedValue = map['apiExportSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
