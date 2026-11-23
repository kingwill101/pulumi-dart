// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_sandboxes_template.dart';

class InstanceSandboxes {
  /// Sandbox templates that can be launched through the `sandbox` CLI.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceSandboxesTemplate>?>? templates;

  /// Creates a new [InstanceSandboxes].
  /// [templates] Sandbox templates that can be launched through the `sandbox` CLI.
  const InstanceSandboxes({
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': ?pulumi.Input.mapOptionalInputValue<List<InstanceSandboxesTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<InstanceSandboxesTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceSandboxes.fromMap(Map<String, dynamic> map) {
    return InstanceSandboxes(
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSandboxesTemplate>(guardedValue, (value) => InstanceSandboxesTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
