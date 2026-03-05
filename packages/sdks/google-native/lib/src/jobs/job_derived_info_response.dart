// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_response.dart';

/// Output only. Derived details about the job posting.
class JobDerivedInfoResponse {
  /// Job categories derived from Job.title and Job.description.
  final pulumi.Input<List<String>> jobCategories;
  /// Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  final pulumi.Input<List<LocationResponse>> locations;

  /// Creates a new [JobDerivedInfoResponse].
  /// [jobCategories] Job categories derived from Job.title and Job.description.
  /// [locations] Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  JobDerivedInfoResponse({
    required this.jobCategories,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCategories': jobCategories,
      'locations': pulumi.Input.mapInputValue<List<LocationResponse>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<LocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return JobDerivedInfoResponse(
      jobCategories: pulumi.Input.fromValue((map['jobCategories'] as List).cast<String>()),
      locations: pulumi.Input.fromValue(pulumi.Input.decodeList<LocationResponse>(map['locations']!, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

