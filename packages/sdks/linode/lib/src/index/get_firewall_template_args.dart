// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_firewall_template_get_firewall_template_args_doc}
/// Arguments for getFirewallTemplate.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewall_template_get_firewall_template_args_doc}
class GetFirewallTemplateArgs {
  /// The slug of the firewall template.
  final pulumi.Input<String> slug;

  /// Creates a new [GetFirewallTemplateArgs].
  /// [slug] The slug of the firewall template.
  GetFirewallTemplateArgs({
    required this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slug': slug,
    };
  }

  factory GetFirewallTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplateArgs(
      slug: pulumi.Input.fromValue(map['slug'] as String),
    );
  }
}

