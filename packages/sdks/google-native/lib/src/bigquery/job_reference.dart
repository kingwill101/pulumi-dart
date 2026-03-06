// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobReference {
  /// [Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  final pulumi.Input<String>? jobId;
  /// The geographic location of the job. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  final pulumi.Input<String>? location;
  /// [Required] The ID of the project containing this job.
  final pulumi.Input<String>? project;

  /// Creates a new [JobReference].
  /// [jobId] [Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  /// [location] The geographic location of the job. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  /// [project] [Required] The ID of the project containing this job.
  const JobReference({
    this.jobId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': ?jobId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory JobReference.fromMap(Map<String, dynamic> map) {
    return JobReference(
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

