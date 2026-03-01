// ignore_for_file: unused_element, unnecessary_cast

import 'httpingress_rule_value_patch.dart';

/// IngressRule represents the rules mapping the paths under a specified host to the related backend services. Incoming requests are first evaluated for a host match, then routed to the backend associated with the matching IngressRuleValue.
class IngressRulePatch {
  /// Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the
  /// IP in the Spec of the parent Ingress.
  /// 2. The `:` delimiter is not respected because ports are not allowed.
  /// Currently the port of an Ingress is implicitly :80 for http and
  /// :443 for https.
  /// Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
  final String? host;
  final HTTPIngressRuleValuePatch? http;

  /// Creates a new [IngressRulePatch].
  /// [host] Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the
  /// [http] Optional.
  IngressRulePatch({
    this.host,
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'http': ?http == null ? null : http!.toMap(),
    };
  }

  factory IngressRulePatch.fromMap(Map<String, dynamic> map) {
    return IngressRulePatch(
      host: map['host'] == null ? null : map['host'] as String,
      http: map['http'] == null ? null : HTTPIngressRuleValuePatch.fromMap((map['http'] as Map).cast<String, dynamic>()),
    );
  }
}

