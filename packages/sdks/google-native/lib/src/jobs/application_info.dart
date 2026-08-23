// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application related details of a job posting.
class ApplicationInfo {
  /// Optional but at least one of uris, emails or instruction must be specified. Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
  final pulumi.Input<List<String>>? emails;
  /// Optional but at least one of uris, emails or instruction must be specified. Use this field to provide instructions, such as "Mail your application to ...", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
  final pulumi.Input<String>? instruction;
  /// Optional but at least one of uris, emails or instruction must be specified. Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [ApplicationInfo].
  /// [emails] Optional but at least one of uris, emails or instruction must be specified. Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
  /// [instruction] Optional but at least one of uris, emails or instruction must be specified. Use this field to provide instructions, such as "Mail your application to ...", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
  /// [uris] Optional but at least one of uris, emails or instruction must be specified. Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
  const ApplicationInfo({
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

  factory ApplicationInfo.fromMap(Map<String, dynamic> map) {
    return ApplicationInfo(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instruction: (() { final guardedValue = map['instruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
