// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapavailability_zone_pair_response.dart';

/// Result data returned by getSAPAvailabilityZoneDetails.
class GetSAPAvailabilityZoneDetailsResult {
  /// Gets the list of availability zone pairs.
  final List<SAPAvailabilityZonePairResponse>? availabilityZonePairs;

  /// Creates a new [GetSAPAvailabilityZoneDetailsResult].
  /// [availabilityZonePairs] Gets the list of availability zone pairs.
  GetSAPAvailabilityZoneDetailsResult({
    this.availabilityZonePairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonePairs': ?(() { final guardedValue = availabilityZonePairs; if (guardedValue == null) return null; return pulumi.Input.encodeList<SAPAvailabilityZonePairResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSAPAvailabilityZoneDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetSAPAvailabilityZoneDetailsResult(
      availabilityZonePairs: (() { final guardedValue = map['availabilityZonePairs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SAPAvailabilityZonePairResponse>(guardedValue, (value) => SAPAvailabilityZonePairResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

