// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_sandbox_template.dart';

class GetWorkerPoolTemplateSandbox {
  /// Sandbox templates that can be launched through the 'sandbox' CLI.
  final pulumi.Input<List<GetWorkerPoolTemplateSandboxTemplate>> templates;

  /// Creates a new [GetWorkerPoolTemplateSandbox].
  /// [templates] Sandbox templates that can be launched through the 'sandbox' CLI.
  const GetWorkerPoolTemplateSandbox({
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateSandboxTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateSandboxTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerPoolTemplateSandbox.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateSandbox(
      templates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateSandboxTemplate>(map['templates']!, (value) => GetWorkerPoolTemplateSandboxTemplate.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
