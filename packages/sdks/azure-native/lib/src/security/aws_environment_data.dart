// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_organizational_data_master.dart';

/// The AWS connector environment data
class AwsEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'AwsAccount'.
  final pulumi.Input<String> environmentType;
  /// The AWS account's organizational data
  final pulumi.Input<AwsOrganizationalDataMaster>? organizationalData;
  /// list of regions to scan
  final pulumi.Input<List<String>>? regions;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final pulumi.Input<double>? scanInterval;

  /// Creates a new [AwsEnvironmentData].
  /// [environmentType] The type of the environment data.
  /// [organizationalData] The AWS account's organizational data
  /// [regions] list of regions to scan
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  AwsEnvironmentData({
    required this.environmentType,
    this.organizationalData,
    this.regions,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
      'organizationalData': ?pulumi.Input.mapOptionalInputValue<AwsOrganizationalDataMaster, Map<String, dynamic>>(organizationalData, (value) => value.toMap()),
      'regions': ?regions,
      'scanInterval': ?scanInterval,
    };
  }

  factory AwsEnvironmentData.fromMap(Map<String, dynamic> map) {
    return AwsEnvironmentData(
      environmentType: (map['environmentType'] as String).input(),
      organizationalData: map['organizationalData'] == null ? null : (AwsOrganizationalDataMaster.fromMap((map['organizationalData']! as Map).cast<String, dynamic>())).input(),
      regions: map['regions'] == null ? null : ((map['regions']! as List).cast<String>()).input(),
      scanInterval: map['scanInterval'] == null ? null : (map['scanInterval']! as double).input(),
    );
  }
}

