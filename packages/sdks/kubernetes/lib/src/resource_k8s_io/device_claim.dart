// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_configuration.dart';
import 'device_constraint.dart';
import 'device_request.dart';

/// DeviceClaim defines how to request devices with a ResourceClaim.
class DeviceClaim {
  /// This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  final pulumi.Input<List<DeviceClaimConfiguration>>? config;

  /// These constraints must be satisfied by the set of devices that get allocated for the claim.
  final pulumi.Input<List<DeviceConstraint>>? constraints;

  /// Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  final pulumi.Input<List<DeviceRequest>>? requests;

  /// Creates a new [DeviceClaim].
  /// [config] This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  /// [constraints] These constraints must be satisfied by the set of devices that get allocated for the claim.
  /// [requests] Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  DeviceClaim({this.config, this.constraints, this.requests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeviceClaimConfiguration>,
            List<Map<String, dynamic>>
          >(
            config,
            (value) =>
                pulumi.Input.encodeList<
                  DeviceClaimConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'constraints':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeviceConstraint>,
            List<Map<String, dynamic>>
          >(
            constraints,
            (value) =>
                pulumi.Input.encodeList<DeviceConstraint, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'requests':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeviceRequest>,
            List<Map<String, dynamic>>
          >(
            requests,
            (value) =>
                pulumi.Input.encodeList<DeviceRequest, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory DeviceClaim.fromMap(Map<String, dynamic> map) {
    return DeviceClaim(
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeviceClaimConfiguration>(
            guardedValue,
            (value) => DeviceClaimConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      constraints: (() {
        final guardedValue = map['constraints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeviceConstraint>(
            guardedValue,
            (value) => DeviceConstraint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      requests: (() {
        final guardedValue = map['requests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeviceRequest>(
            guardedValue,
            (value) =>
                DeviceRequest.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
