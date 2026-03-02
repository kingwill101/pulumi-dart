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
  GetDbNodesDbNodeProperty({
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
      dbNodeStorageSizeGb: (map['dbNodeStorageSizeGb'] as int).input(),
      dbServerOcid: (map['dbServerOcid'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      memorySizeGb: (map['memorySizeGb'] as int).input(),
      ocid: (map['ocid'] as String).input(),
      ocpuCount: (map['ocpuCount'] as int).input(),
      state: (map['state'] as String).input(),
      totalCpuCoreCount: (map['totalCpuCoreCount'] as int).input(),
    );
  }
}

