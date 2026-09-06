// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AWS connector environment data
class AwsEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'AwsAccount'.
  final pulumi.Input<String> environmentType;
  /// The AWS account's organizational data
  final pulumi.Input<dynamic>? organizationalData;
  /// list of regions to scan
  final pulumi.Input<List<String>?>? regions;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final pulumi.Input<double?>? scanInterval;

  /// Creates a new [AwsEnvironmentData].
  /// [environmentType] The type of the environment data.
  /// [organizationalData] The AWS account's organizational data
  /// [regions] list of regions to scan
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  const AwsEnvironmentData({
    required this.environmentType,
    this.organizationalData,
    this.regions,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
      'organizationalData': ?organizationalData,
      'regions': ?regions,
      'scanInterval': ?scanInterval,
    };
  }

  factory AwsEnvironmentData.fromMap(Map<String, dynamic> map) {
    return AwsEnvironmentData(
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      organizationalData: (() { final guardedValue = map['organizationalData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scanInterval: (() { final guardedValue = map['scanInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
