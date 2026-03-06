// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_response_jobs_v4.dart';

/// Derived details about the job posting.
class JobDerivedInfoResponseJobsV4 {
  /// Job categories derived from Job.title and Job.description.
  final pulumi.Input<List<String>> jobCategories;
  /// Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  final pulumi.Input<List<LocationResponseJobsV4>> locations;

  /// Creates a new [JobDerivedInfoResponseJobsV4].
  /// [jobCategories] Job categories derived from Job.title and Job.description.
  /// [locations] Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  const JobDerivedInfoResponseJobsV4({
    required this.jobCategories,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCategories': jobCategories,
      'locations': pulumi.Input.mapInputValue<List<LocationResponseJobsV4>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<LocationResponseJobsV4, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobDerivedInfoResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return JobDerivedInfoResponseJobsV4(
      jobCategories: pulumi.Input.fromValue((map['jobCategories'] as List).cast<String>()),
      locations: pulumi.Input.fromValue(pulumi.Input.decodeList<LocationResponseJobsV4>(map['locations']!, (value) => LocationResponseJobsV4.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

