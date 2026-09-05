// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpingress_rule_value_patch_networking_k8s_io_v1beta1.dart';

/// IngressRule represents the rules mapping the paths under a specified host to the related backend services. Incoming requests are first evaluated for a host match, then routed to the backend associated with the matching IngressRuleValue.
class IngressRulePatchNetworkingK8sIoV1beta1 {
  /// Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the
  /// IP in the Spec of the parent Ingress.
  /// 2. The `:` delimiter is not respected because ports are not allowed.
  /// Currently the port of an Ingress is implicitly :80 for http and
  /// :443 for https.
  /// Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
  final pulumi.Input<String?>? host;
  final pulumi.Input<HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1?>? http;

  /// Creates a new [IngressRulePatchNetworkingK8sIoV1beta1].
  /// [host] Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the
  /// [http] Optional.
  const IngressRulePatchNetworkingK8sIoV1beta1({
    this.host,
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'http': ?pulumi.Input.mapOptionalInputValue<HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory IngressRulePatchNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressRulePatchNetworkingK8sIoV1beta1(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
