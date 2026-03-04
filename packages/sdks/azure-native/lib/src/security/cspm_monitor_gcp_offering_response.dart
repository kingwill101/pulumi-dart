// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cspm_monitor_gcp_offering_response_native_cloud_connection.dart';

/// The CSPM monitoring for GCP offering
class CspmMonitorGcpOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;

  /// The native cloud connection configuration
  final pulumi.Input<CspmMonitorGcpOfferingResponseNativeCloudConnection>?
  nativeCloudConnection;

  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGcp'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorGcpOfferingResponse].
  /// [description] The offering description.
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  CspmMonitorGcpOfferingResponse({
    required this.description,
    this.nativeCloudConnection,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'nativeCloudConnection':
          ?pulumi.Input.mapOptionalInputValue<
            CspmMonitorGcpOfferingResponseNativeCloudConnection,
            Map<String, dynamic>
          >(nativeCloudConnection, (value) => value.toMap()),
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGcpOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      nativeCloudConnection: (() {
        final guardedValue = map['nativeCloudConnection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CspmMonitorGcpOfferingResponseNativeCloudConnection.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
