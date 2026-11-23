// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_sandboxes_template.dart';

class JobTemplateTemplateSandboxes {
  /// Sandbox templates that can be launched through the `sandbox` CLI.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateSandboxesTemplate>?>? templates;

  /// Creates a new [JobTemplateTemplateSandboxes].
  /// [templates] Sandbox templates that can be launched through the `sandbox` CLI.
  const JobTemplateTemplateSandboxes({
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateSandboxesTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<JobTemplateTemplateSandboxesTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTemplateTemplateSandboxes.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateSandboxes(
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTemplateTemplateSandboxesTemplate>(guardedValue, (value) => JobTemplateTemplateSandboxesTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
