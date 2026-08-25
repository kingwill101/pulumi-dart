// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbNodesDbNodeProperty {
  /// Output only
  final pulumi.Input<int> dbNodeStorageSizeGb;
  /// Output only
  final pulumi.Input<String> dbServerOcid;
  /// Output only
  final pulumi.Input<String> hostname;
  /// Output only
  final pulumi.Input<int> memorySizeGb;
  /// Output only
  final pulumi.Input<String> ocid;
  /// Output only
  final pulumi.Input<int> ocpuCount;
  /// Output only
  final pulumi.Input<String> state;
  /// Output only
  final pulumi.Input<int> totalCpuCoreCount;

  /// Creates a new [GetDbNodesDbNodeProperty].
  /// [dbNodeStorageSizeGb] Output only
  /// [dbServerOcid] Output only
  /// [hostname] Output only
  /// [memorySizeGb] Output only
  /// [ocid] Output only
  /// [ocpuCount] Output only
  /// [state] Output only
  /// [totalCpuCoreCount] Output only
  const GetDbNodesDbNodeProperty({
    required this.dbNodeStorageSizeGb,
    required this.dbServerOcid,
    required this.hostname,
    required this.memorySizeGb,
    required this.ocid,
    required this.ocpuCount,
    required this.state,
    required this.totalCpuCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbNodeStorageSizeGb': dbNodeStorageSizeGb,
      'dbServerOcid': dbServerOcid,
      'hostname': hostname,
      'memorySizeGb': memorySizeGb,
      'ocid': ocid,
      'ocpuCount': ocpuCount,
      'state': state,
      'totalCpuCoreCount': totalCpuCoreCount,
    };
  }

  factory GetDbNodesDbNodeProperty.fromMap(Map<String, dynamic> map) {
    return GetDbNodesDbNodeProperty(
      dbNodeStorageSizeGb: pulumi.Input.fromValue((map['dbNodeStorageSizeGb'] as num).toInt()),
      dbServerOcid: pulumi.Input.fromValue(map['dbServerOcid'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      memorySizeGb: pulumi.Input.fromValue((map['memorySizeGb'] as num).toInt()),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      ocpuCount: pulumi.Input.fromValue((map['ocpuCount'] as num).toInt()),
      state: pulumi.Input.fromValue(map['state'] as String),
      totalCpuCoreCount: pulumi.Input.fromValue((map['totalCpuCoreCount'] as num).toInt()),
    );
  }
}
