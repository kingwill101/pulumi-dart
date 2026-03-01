// ignore_for_file: unused_element, unnecessary_cast

import 'location_response_jobs_v4.dart';

/// Derived details about the company.
class CompanyDerivedInfoResponseJobsV4 {
  /// A structured headquarters location of the company, resolved from Company.headquarters_address if provided.
  final LocationResponseJobsV4 headquartersLocation;

  /// Creates a new [CompanyDerivedInfoResponseJobsV4].
  /// [headquartersLocation] A structured headquarters location of the company, resolved from Company.headquarters_address if provided.
  CompanyDerivedInfoResponseJobsV4({
    required this.headquartersLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headquartersLocation': headquartersLocation.toMap(),
    };
  }

  factory CompanyDerivedInfoResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return CompanyDerivedInfoResponseJobsV4(
      headquartersLocation: LocationResponseJobsV4.fromMap((map['headquartersLocation'] as Map).cast<String, dynamic>()),
    );
  }
}

