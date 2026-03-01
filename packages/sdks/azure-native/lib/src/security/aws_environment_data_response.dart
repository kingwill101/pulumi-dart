// ignore_for_file: unused_element, unnecessary_cast

import 'aws_organizational_data_master_response.dart';

/// The AWS connector environment data
class AwsEnvironmentDataResponse {
  /// The AWS account name
  final String accountName;
  /// The type of the environment data.
  /// Expected value is 'AwsAccount'.
  final String environmentType;
  /// The AWS account's organizational data
  final AwsOrganizationalDataMasterResponse? organizationalData;
  /// list of regions to scan
  final List<String>? regions;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final double? scanInterval;

  /// Creates a new [AwsEnvironmentDataResponse].
  /// [accountName] The AWS account name
  /// [environmentType] The type of the environment data.
  /// [organizationalData] The AWS account's organizational data
  /// [regions] list of regions to scan
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  AwsEnvironmentDataResponse({
    required this.accountName,
    required this.environmentType,
    this.organizationalData,
    this.regions,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'environmentType': environmentType,
      'organizationalData': ?organizationalData == null ? null : organizationalData!.toMap(),
      'regions': ?regions,
      'scanInterval': ?scanInterval,
    };
  }

  factory AwsEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return AwsEnvironmentDataResponse(
      accountName: map['accountName'] as String,
      environmentType: map['environmentType'] as String,
      organizationalData: map['organizationalData'] == null ? null : AwsOrganizationalDataMasterResponse.fromMap((map['organizationalData'] as Map).cast<String, dynamic>()),
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      scanInterval: map['scanInterval'] == null ? null : map['scanInterval'] as double,
    );
  }
}

