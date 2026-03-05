// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_request.dart';

/// DriverRequests describes all resources that are needed from one particular driver.
class DriverRequests {
  /// DriverName is the name used by the DRA driver kubelet plugin.
  final pulumi.Input<String>? driverName;
  /// Requests describes all resources that are needed from the driver.
  final pulumi.Input<List<ResourceRequest>>? requests;
  /// VendorParameters are arbitrary setup parameters for all requests of the claim. They are ignored while allocating the claim.
  final pulumi.Input<dynamic>? vendorParameters;

  /// Creates a new [DriverRequests].
  /// [driverName] DriverName is the name used by the DRA driver kubelet plugin.
  /// [requests] Requests describes all resources that are needed from the driver.
  /// [vendorParameters] VendorParameters are arbitrary setup parameters for all requests of the claim. They are ignored while allocating the claim.
  DriverRequests({
    this.driverName,
    this.requests,
    this.vendorParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'requests': ?pulumi.Input.mapOptionalInputValue<List<ResourceRequest>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<ResourceRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vendorParameters': ?vendorParameters,
    };
  }

  factory DriverRequests.fromMap(Map<String, dynamic> map) {
    return DriverRequests(
      driverName: (() { final guardedValue = map['driverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceRequest>(guardedValue, (value) => ResourceRequest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vendorParameters: (() { final guardedValue = map['vendorParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

