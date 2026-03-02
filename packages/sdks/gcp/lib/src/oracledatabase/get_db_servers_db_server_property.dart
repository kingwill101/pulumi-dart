// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbServersDbServerProperty {
  /// Output only
  final pulumi.Input<List<String>> dbNodeIds;
  /// Output only
  final pulumi.Input<int> dbNodeStorageSizeGb;
  /// Output only
  final pulumi.Input<int> maxDbNodeStorageSizeGb;
  /// Output only
  final pulumi.Input<int> maxMemorySizeGb;
  /// Output only
  final pulumi.Input<int> maxOcpuCount;
  /// Output only
  final pulumi.Input<int> memorySizeGb;
  /// Output only
  final pulumi.Input<String> ocid;
  /// Output only
  final pulumi.Input<int> ocpuCount;
  /// Output only
  final pulumi.Input<String> state;
  /// Output only
  final pulumi.Input<int> vmCount;

  /// Creates a new [GetDbServersDbServerProperty].
  /// [dbNodeIds] Output only
  /// [dbNodeStorageSizeGb] Output only
  /// [maxDbNodeStorageSizeGb] Output only
  /// [maxMemorySizeGb] Output only
  /// [maxOcpuCount] Output only
  /// [memorySizeGb] Output only
  /// [ocid] Output only
  /// [ocpuCount] Output only
  /// [state] Output only
  /// [vmCount] Output only
  GetDbServersDbServerProperty({
    required this.dbNodeIds,
    required this.dbNodeStorageSizeGb,
    required this.maxDbNodeStorageSizeGb,
    required this.maxMemorySizeGb,
    required this.maxOcpuCount,
    required this.memorySizeGb,
    required this.ocid,
    required this.ocpuCount,
    required this.state,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbNodeIds': dbNodeIds,
      'dbNodeStorageSizeGb': dbNodeStorageSizeGb,
      'maxDbNodeStorageSizeGb': maxDbNodeStorageSizeGb,
      'maxMemorySizeGb': maxMemorySizeGb,
      'maxOcpuCount': maxOcpuCount,
      'memorySizeGb': memorySizeGb,
      'ocid': ocid,
      'ocpuCount': ocpuCount,
      'state': state,
      'vmCount': vmCount,
    };
  }

  factory GetDbServersDbServerProperty.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServerProperty(
      dbNodeIds: ((map['dbNodeIds'] as List).cast<String>()).input(),
      dbNodeStorageSizeGb: (map['dbNodeStorageSizeGb'] as int).input(),
      maxDbNodeStorageSizeGb: (map['maxDbNodeStorageSizeGb'] as int).input(),
      maxMemorySizeGb: (map['maxMemorySizeGb'] as int).input(),
      maxOcpuCount: (map['maxOcpuCount'] as int).input(),
      memorySizeGb: (map['memorySizeGb'] as int).input(),
      ocid: (map['ocid'] as String).input(),
      ocpuCount: (map['ocpuCount'] as int).input(),
      state: (map['state'] as String).input(),
      vmCount: (map['vmCount'] as int).input(),
    );
  }
}

