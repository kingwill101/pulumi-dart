// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapavailability_zone_pair_response.dart';

/// Result data returned by getSapVirtualInstanceInvokeAvailabilityZoneDetails.
class GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult {
  /// Gets the list of availability zone pairs.
  final List<SAPAvailabilityZonePairResponse>? availabilityZonePairs;

  /// Creates a new [GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult].
  /// [availabilityZonePairs] Gets the list of availability zone pairs.
  const GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult({
    this.availabilityZonePairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonePairs': ?(() { final guardedValue = availabilityZonePairs; if (guardedValue == null) return null; return pulumi.Input.encodeList<SAPAvailabilityZonePairResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult(
      availabilityZonePairs: (() { final guardedValue = map['availabilityZonePairs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SAPAvailabilityZonePairResponse>(guardedValue, (value) => SAPAvailabilityZonePairResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
