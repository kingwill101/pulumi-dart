// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_response.dart';

/// Result data returned by getJobTemplate.
class GetJobTemplateResult {
  /// The configuration for this template.
  final JobConfigResponse config;
  /// The labels associated with this job template. You can use these to organize and group your job templates.
  final Map<String, String> labels;
  /// The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  final String name;

  /// Creates a new [GetJobTemplateResult].
  /// [config] The configuration for this template.
  /// [labels] The labels associated with this job template. You can use these to organize and group your job templates.
  /// [name] The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  const GetJobTemplateResult({
    required this.config,
    required this.labels,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config.toMap(),
      'labels': labels,
      'name': name,
    };
  }

  factory GetJobTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateResult(
      config: JobConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
