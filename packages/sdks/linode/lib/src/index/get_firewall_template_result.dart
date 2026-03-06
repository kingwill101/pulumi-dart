// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_template_inbound.dart';
import 'get_firewall_template_outbound.dart';

/// Result data returned by getFirewallTemplate.
class GetFirewallTemplateResult {
  /// The computed ID of the data source, which matches the `slug` attribute.
  final String id;
  /// The default behavior for inbound traffic. This can be overridden by individual firewall rules.
  final String inboundPolicy;
  /// A list of firewall rules specifying allowed inbound network traffic.
  final List<GetFirewallTemplateInbound> inbounds;
  /// The default behavior for outbound traffic. This can be overridden by individual firewall rules.
  final String outboundPolicy;
  /// A list of firewall rules specifying allowed outbound network traffic.
  final List<GetFirewallTemplateOutbound> outbounds;
  final String slug;

  /// Creates a new [GetFirewallTemplateResult].
  /// [id] The computed ID of the data source, which matches the `slug` attribute.
  /// [inboundPolicy] The default behavior for inbound traffic. This can be overridden by individual firewall rules.
  /// [inbounds] A list of firewall rules specifying allowed inbound network traffic.
  /// [outboundPolicy] The default behavior for outbound traffic. This can be overridden by individual firewall rules.
  /// [outbounds] A list of firewall rules specifying allowed outbound network traffic.
  /// [slug] Required.
  const GetFirewallTemplateResult({
    required this.id,
    required this.inboundPolicy,
    required this.inbounds,
    required this.outboundPolicy,
    required this.outbounds,
    required this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'inboundPolicy': inboundPolicy,
      'inbounds': pulumi.Input.encodeList<GetFirewallTemplateInbound, Map<String, dynamic>>(inbounds, (value) => value.toMap()),
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.encodeList<GetFirewallTemplateOutbound, Map<String, dynamic>>(outbounds, (value) => value.toMap()),
      'slug': slug,
    };
  }

  factory GetFirewallTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplateResult(
      id: map['id'] as String,
      inboundPolicy: map['inboundPolicy'] as String,
      inbounds: pulumi.Input.decodeList<GetFirewallTemplateInbound>(map['inbounds']!, (value) => GetFirewallTemplateInbound.fromMap((value as Map).cast<String, dynamic>())),
      outboundPolicy: map['outboundPolicy'] as String,
      outbounds: pulumi.Input.decodeList<GetFirewallTemplateOutbound>(map['outbounds']!, (value) => GetFirewallTemplateOutbound.fromMap((value as Map).cast<String, dynamic>())),
      slug: map['slug'] as String,
    );
  }
}

