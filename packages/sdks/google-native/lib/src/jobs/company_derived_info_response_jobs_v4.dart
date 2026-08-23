// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_response_jobs_v4.dart';

/// Derived details about the company.
class CompanyDerivedInfoResponseJobsV4 {
  /// A structured headquarters location of the company, resolved from Company.headquarters_address if provided.
  final pulumi.Input<LocationResponseJobsV4> headquartersLocation;

  /// Creates a new [CompanyDerivedInfoResponseJobsV4].
  /// [headquartersLocation] A structured headquarters location of the company, resolved from Company.headquarters_address if provided.
  const CompanyDerivedInfoResponseJobsV4({
    required this.headquartersLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headquartersLocation': pulumi.Input.mapInputValue<LocationResponseJobsV4, Map<String, dynamic>>(headquartersLocation, (value) => value.toMap()),
    };
  }

  factory CompanyDerivedInfoResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return CompanyDerivedInfoResponseJobsV4(
      headquartersLocation: pulumi.Input.fromValue(LocationResponseJobsV4.fromMap((map['headquartersLocation']! as Map).cast<String, dynamic>())),
    );
  }
}
