// ignore_for_file: unused_element, unnecessary_cast

import 'location_response.dart';

/// Derived details about the company.
class CompanyDerivedInfoResponse {
  /// A structured headquarters location of the company, resolved from Company.hq_location if provided.
  final LocationResponse headquartersLocation;

  /// Creates a new [CompanyDerivedInfoResponse].
  /// [headquartersLocation] A structured headquarters location of the company, resolved from Company.hq_location if provided.
  CompanyDerivedInfoResponse({
    required this.headquartersLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headquartersLocation': headquartersLocation.toMap(),
    };
  }

  factory CompanyDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return CompanyDerivedInfoResponse(
      headquartersLocation: LocationResponse.fromMap((map['headquartersLocation'] as Map).cast<String, dynamic>()),
    );
  }
}

