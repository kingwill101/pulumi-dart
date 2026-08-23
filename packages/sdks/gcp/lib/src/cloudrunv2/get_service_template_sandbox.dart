// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_sandbox_template.dart';

class GetServiceTemplateSandbox {
  /// Sandbox templates that can be launched through the 'sandbox' CLI.
  final pulumi.Input<List<GetServiceTemplateSandboxTemplate>> templates;

  /// Creates a new [GetServiceTemplateSandbox].
  /// [templates] Sandbox templates that can be launched through the 'sandbox' CLI.
  const GetServiceTemplateSandbox({
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': pulumi.Input.mapInputValue<List<GetServiceTemplateSandboxTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetServiceTemplateSandboxTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceTemplateSandbox.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSandbox(
      templates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSandboxTemplate>(map['templates']!, (value) => GetServiceTemplateSandboxTemplate.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
