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
      'availabilityZonePairs': ?availabilityZonePairs == null ? null : pulumi.Input.encodeList<SAPAvailabilityZonePairResponse, Map<String, dynamic>>(availabilityZonePairs!, (value) => value.toMap()),
    };
  }

  factory GetSAPAvailabilityZoneDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetSAPAvailabilityZoneDetailsResult(
      availabilityZonePairs: map['availabilityZonePairs'] == null ? null : pulumi.Input.decodeList<SAPAvailabilityZonePairResponse>(map['availabilityZonePairs']!, (value) => SAPAvailabilityZonePairResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

