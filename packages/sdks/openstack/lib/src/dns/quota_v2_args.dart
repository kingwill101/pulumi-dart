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
    pulumi.Output<int>? apiExportSize,
    required pulumi.Output<String> projectId,
    pulumi.Output<int>? recordsetRecords,
    pulumi.Output<String>? region,
    pulumi.Output<int>? zoneRecords,
    pulumi.Output<int>? zoneRecordsets,
    pulumi.Output<int>? zones,
  }) :
      apiExportSize = pulumi.Input.asOptionalInput<int>(apiExportSize),
      projectId = pulumi.Input.asInput<String>(projectId),
      recordsetRecords = pulumi.Input.asOptionalInput<int>(recordsetRecords),
      region = pulumi.Input.asOptionalInput<String>(region),
      zoneRecords = pulumi.Input.asOptionalInput<int>(zoneRecords),
      zoneRecordsets = pulumi.Input.asOptionalInput<int>(zoneRecordsets),
      zones = pulumi.Input.asOptionalInput<int>(zones);

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
      apiExportSize: map['apiExportSize'] == null ? null : pulumi.Output.create<int>(map['apiExportSize'] as int),
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
      recordsetRecords: map['recordsetRecords'] == null ? null : pulumi.Output.create<int>(map['recordsetRecords'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      zoneRecords: map['zoneRecords'] == null ? null : pulumi.Output.create<int>(map['zoneRecords'] as int),
      zoneRecordsets: map['zoneRecordsets'] == null ? null : pulumi.Output.create<int>(map['zoneRecordsets'] as int),
      zones: map['zones'] == null ? null : pulumi.Output.create<int>(map['zones'] as int),
    );
  }
}

