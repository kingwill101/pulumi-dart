// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_templates_firewall_template_inbound.dart';
import 'get_firewall_templates_firewall_template_outbound.dart';

class GetFirewallTemplatesFirewallTemplate {
  /// The default behavior for inbound traffic.
  final String inboundPolicy;
  /// A list of firewall rules specifying allowed inbound network traffic.
  final List<GetFirewallTemplatesFirewallTemplateInbound> inbounds;
  /// The default behavior for outbound traffic.
  final String outboundPolicy;
  /// A list of firewall rules specifying allowed outbound network traffic.
  final List<GetFirewallTemplatesFirewallTemplateOutbound> outbounds;
  /// The slug of the firewall template.
  final String slug;

  /// Creates a new [GetFirewallTemplatesFirewallTemplate].
  /// [inboundPolicy] The default behavior for inbound traffic.
  /// [inbounds] A list of firewall rules specifying allowed inbound network traffic.
  /// [outboundPolicy] The default behavior for outbound traffic.
  /// [outbounds] A list of firewall rules specifying allowed outbound network traffic.
  /// [slug] The slug of the firewall template.
  GetFirewallTemplatesFirewallTemplate({
    required this.inboundPolicy,
    required this.inbounds,
    required this.outboundPolicy,
    required this.outbounds,
    required this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundPolicy': inboundPolicy,
      'inbounds': pulumi.Input.encodeList<GetFirewallTemplatesFirewallTemplateInbound, Map<String, dynamic>>(inbounds, (value) => value.toMap()),
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.encodeList<GetFirewallTemplatesFirewallTemplateOutbound, Map<String, dynamic>>(outbounds, (value) => value.toMap()),
      'slug': slug,
    };
  }

  factory GetFirewallTemplatesFirewallTemplate.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplatesFirewallTemplate(
      inboundPolicy: map['inboundPolicy'] as String,
      inbounds: pulumi.Input.decodeList<GetFirewallTemplatesFirewallTemplateInbound>(map['inbounds'], (value) => GetFirewallTemplatesFirewallTemplateInbound.fromMap((value as Map).cast<String, dynamic>())),
      outboundPolicy: map['outboundPolicy'] as String,
      outbounds: pulumi.Input.decodeList<GetFirewallTemplatesFirewallTemplateOutbound>(map['outbounds'], (value) => GetFirewallTemplatesFirewallTemplateOutbound.fromMap((value as Map).cast<String, dynamic>())),
      slug: map['slug'] as String,
    );
  }
}

