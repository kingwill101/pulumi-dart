// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cspm_monitor_aws_offering_response_native_cloud_connection.dart';

/// The CSPM monitoring for AWS offering
class CspmMonitorAwsOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;
  /// The native cloud connection configuration
  final pulumi.Input<CspmMonitorAwsOfferingResponseNativeCloudConnection>? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorAws'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorAwsOfferingResponse].
  /// [description] The offering description.
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  const CspmMonitorAwsOfferingResponse({
    required this.description,
    this.nativeCloudConnection,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'nativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<CspmMonitorAwsOfferingResponseNativeCloudConnection, Map<String, dynamic>>(nativeCloudConnection, (value) => value.toMap()),
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAwsOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      nativeCloudConnection: (() { final guardedValue = map['nativeCloudConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CspmMonitorAwsOfferingResponseNativeCloudConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

