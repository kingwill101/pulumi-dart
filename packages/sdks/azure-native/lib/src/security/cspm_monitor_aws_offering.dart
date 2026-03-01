// ignore_for_file: unused_element, unnecessary_cast

import 'cspm_monitor_aws_offering_native_cloud_connection.dart';

/// The CSPM monitoring for AWS offering
class CspmMonitorAwsOffering {
  /// The native cloud connection configuration
  final CspmMonitorAwsOfferingNativeCloudConnection? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorAws'.
  final String offeringType;

  /// Creates a new [CspmMonitorAwsOffering].
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  CspmMonitorAwsOffering({
    this.nativeCloudConnection,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nativeCloudConnection': ?nativeCloudConnection == null ? null : nativeCloudConnection!.toMap(),
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorAwsOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAwsOffering(
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : CspmMonitorAwsOfferingNativeCloudConnection.fromMap((map['nativeCloudConnection'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
    );
  }
}

