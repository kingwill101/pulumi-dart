// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpingress_rule_value.dart';

/// IngressRule represents the rules mapping the paths under a specified host to the related backend services. Incoming requests are first evaluated for a host match, then routed to the backend associated with the matching IngressRuleValue.
class IngressRule {
  /// Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the
  /// IP in the Spec of the parent Ingress.
  /// 2. The `:` delimiter is not respected because ports are not allowed.
  /// Currently the port of an Ingress is implicitly :80 for http and
  /// :443 for https.
  /// Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
  final pulumi.Input<String>? host;
  final pulumi.Input<HTTPIngressRuleValue>? http;

  /// Creates a new [IngressRule].
  /// [host] Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the
  /// [http] Optional.
  const IngressRule({
    this.host,
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'http': ?pulumi.Input.mapOptionalInputValue<HTTPIngressRuleValue, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory IngressRule.fromMap(Map<String, dynamic> map) {
    return IngressRule(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPIngressRuleValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

