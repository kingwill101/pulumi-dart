// ignore_for_file: unused_element, unnecessary_cast

import 'cspm_monitor_aws_offering_response_native_cloud_connection.dart';

/// The CSPM monitoring for AWS offering
class CspmMonitorAwsOfferingResponse {
  /// The offering description.
  final String description;
  /// The native cloud connection configuration
  final CspmMonitorAwsOfferingResponseNativeCloudConnection? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorAws'.
  final String offeringType;

  /// Creates a new [CspmMonitorAwsOfferingResponse].
  /// [description] The offering description.
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  CspmMonitorAwsOfferingResponse({
    required this.description,
    this.nativeCloudConnection,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'nativeCloudConnection': ?nativeCloudConnection == null ? null : nativeCloudConnection!.toMap(),
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAwsOfferingResponse(
      description: map['description'] as String,
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : CspmMonitorAwsOfferingResponseNativeCloudConnection.fromMap((map['nativeCloudConnection'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
    );
  }
}

