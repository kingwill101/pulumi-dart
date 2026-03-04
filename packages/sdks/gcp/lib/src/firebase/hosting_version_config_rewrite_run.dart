// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HostingVersionConfigRewriteRun {
  /// Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  final pulumi.Input<String>? region;

  /// User-defined ID of the Cloud Run service.
  final pulumi.Input<String> serviceId;

  /// Creates a new [HostingVersionConfigRewriteRun].
  /// [region] Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  /// [serviceId] User-defined ID of the Cloud Run service.
  HostingVersionConfigRewriteRun({this.region, required this.serviceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'serviceId': serviceId};
  }

  factory HostingVersionConfigRewriteRun.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfigRewriteRun(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
