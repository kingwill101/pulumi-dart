// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_sandboxes_template.dart';

class ServiceTemplateSandboxes {
  /// Sandbox templates that can be launched through the `sandbox` CLI.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateSandboxesTemplate>>? templates;

  /// Creates a new [ServiceTemplateSandboxes].
  /// [templates] Sandbox templates that can be launched through the `sandbox` CLI.
  const ServiceTemplateSandboxes({
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSandboxesTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<ServiceTemplateSandboxesTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceTemplateSandboxes.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSandboxes(
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTemplateSandboxesTemplate>(guardedValue, (value) => ServiceTemplateSandboxesTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
