// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_sandbox_template.dart';

class GetJobTemplateTemplateSandbox {
  /// Sandbox templates that can be launched through the 'sandbox' CLI.
  final pulumi.Input<List<GetJobTemplateTemplateSandboxTemplate>> templates;

  /// Creates a new [GetJobTemplateTemplateSandbox].
  /// [templates] Sandbox templates that can be launched through the 'sandbox' CLI.
  const GetJobTemplateTemplateSandbox({
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateSandboxTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateSandboxTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobTemplateTemplateSandbox.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateSandbox(
      templates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateSandboxTemplate>(map['templates']!, (value) => GetJobTemplateTemplateSandboxTemplate.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
