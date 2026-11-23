// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_sandboxes_template.dart';

class WorkerPoolTemplateSandboxes {
  /// Sandbox templates that can be launched through the `sandbox` CLI.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTemplateSandboxesTemplate>?>? templates;

  /// Creates a new [WorkerPoolTemplateSandboxes].
  /// [templates] Sandbox templates that can be launched through the `sandbox` CLI.
  const WorkerPoolTemplateSandboxes({
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': ?pulumi.Input.mapOptionalInputValue<List<WorkerPoolTemplateSandboxesTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<WorkerPoolTemplateSandboxesTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerPoolTemplateSandboxes.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateSandboxes(
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerPoolTemplateSandboxesTemplate>(guardedValue, (value) => WorkerPoolTemplateSandboxesTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
