// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_templates_firewall_template_inbound.dart';
import 'get_firewall_templates_firewall_template_outbound.dart';

class GetFirewallTemplatesFirewallTemplate {
  /// The default behavior for inbound traffic.
  final pulumi.Input<String> inboundPolicy;
  /// A list of firewall rules specifying allowed inbound network traffic.
  final pulumi.Input<List<GetFirewallTemplatesFirewallTemplateInbound>> inbounds;
  /// The default behavior for outbound traffic.
  final pulumi.Input<String> outboundPolicy;
  /// A list of firewall rules specifying allowed outbound network traffic.
  final pulumi.Input<List<GetFirewallTemplatesFirewallTemplateOutbound>> outbounds;
  /// The slug of the firewall template.
  final pulumi.Input<String> slug;

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
      'inbounds': pulumi.Input.mapInputValue<List<GetFirewallTemplatesFirewallTemplateInbound>, List<Map<String, dynamic>>>(inbounds, (value) => pulumi.Input.encodeList<GetFirewallTemplatesFirewallTemplateInbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.mapInputValue<List<GetFirewallTemplatesFirewallTemplateOutbound>, List<Map<String, dynamic>>>(outbounds, (value) => pulumi.Input.encodeList<GetFirewallTemplatesFirewallTemplateOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slug': slug,
    };
  }

  factory GetFirewallTemplatesFirewallTemplate.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplatesFirewallTemplate(
      inboundPolicy: pulumi.Input.fromValue(map['inboundPolicy'] as String),
      inbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallTemplatesFirewallTemplateInbound>(map['inbounds']!, (value) => GetFirewallTemplatesFirewallTemplateInbound.fromMap((value as Map).cast<String, dynamic>()))),
      outboundPolicy: pulumi.Input.fromValue(map['outboundPolicy'] as String),
      outbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallTemplatesFirewallTemplateOutbound>(map['outbounds']!, (value) => GetFirewallTemplatesFirewallTemplateOutbound.fromMap((value as Map).cast<String, dynamic>()))),
      slug: pulumi.Input.fromValue(map['slug'] as String),
    );
  }
}

