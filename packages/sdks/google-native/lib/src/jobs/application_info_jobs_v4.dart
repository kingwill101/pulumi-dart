// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application related details of a job posting.
class ApplicationInfoJobsV4 {
  /// Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
  final pulumi.Input<List<String>>? emails;
  /// Use this field to provide instructions, such as "Mail your application to ...", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
  final pulumi.Input<String>? instruction;
  /// Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [ApplicationInfoJobsV4].
  /// [emails] Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
  /// [instruction] Use this field to provide instructions, such as "Mail your application to ...", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
  /// [uris] Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
  ApplicationInfoJobsV4({
    this.emails,
    this.instruction,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'instruction': ?instruction,
      'uris': ?uris,
    };
  }

  factory ApplicationInfoJobsV4.fromMap(Map<String, dynamic> map) {
    return ApplicationInfoJobsV4(
      emails: map['emails'] == null ? null : ((map['emails'] as List).cast<String>()).input(),
      instruction: map['instruction'] == null ? null : (map['instruction'] as String).input(),
      uris: map['uris'] == null ? null : ((map['uris'] as List).cast<String>()).input(),
    );
  }
}

