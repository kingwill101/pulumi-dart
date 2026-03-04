// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application related details of a job posting.
class ApplicationInfoResponseJobsV4 {
  /// Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
  final pulumi.Input<List<String>> emails;

  /// Use this field to provide instructions, such as "Mail your application to ...", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
  final pulumi.Input<String> instruction;

  /// Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
  final pulumi.Input<List<String>> uris;

  /// Creates a new [ApplicationInfoResponseJobsV4].
  /// [emails] Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
  /// [instruction] Use this field to provide instructions, such as "Mail your application to ...", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
  /// [uris] Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
  ApplicationInfoResponseJobsV4({
    required this.emails,
    required this.instruction,
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': emails,
      'instruction': instruction,
      'uris': uris,
    };
  }

  factory ApplicationInfoResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return ApplicationInfoResponseJobsV4(
      emails: pulumi.Input.fromValue((map['emails'] as List).cast<String>()),
      instruction: pulumi.Input.fromValue(map['instruction'] as String),
      uris: pulumi.Input.fromValue((map['uris'] as List).cast<String>()),
    );
  }
}
