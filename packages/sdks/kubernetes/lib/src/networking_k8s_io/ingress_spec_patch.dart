// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_backend_patch.dart';
import 'ingress_rule_patch.dart';
import 'ingress_tlspatch.dart';

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpecPatch {
  /// defaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
  final pulumi.Input<IngressBackendPatch>? defaultBackend;
  /// ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -&gt; IngressClass -&gt; Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  final pulumi.Input<String>? ingressClassName;
  /// rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  final pulumi.Input<List<IngressRulePatch>>? rules;
  /// tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  final pulumi.Input<List<IngressTLSPatch>>? tls;

  /// Creates a new [IngressSpecPatch].
  /// [defaultBackend] defaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
  /// [ingressClassName] ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -&gt; IngressClass -&gt; Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  /// [rules] rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  /// [tls] tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  IngressSpecPatch({
    this.defaultBackend,
    this.ingressClassName,
    this.rules,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBackend': ?pulumi.Input.mapOptionalInputValue<IngressBackendPatch, Map<String, dynamic>>(defaultBackend, (value) => value.toMap()),
      'ingressClassName': ?ingressClassName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<IngressRulePatch>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<IngressRulePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tls': ?pulumi.Input.mapOptionalInputValue<List<IngressTLSPatch>, List<Map<String, dynamic>>>(tls, (value) => pulumi.Input.encodeList<IngressTLSPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IngressSpecPatch.fromMap(Map<String, dynamic> map) {
    return IngressSpecPatch(
      defaultBackend: (() { final guardedValue = map['defaultBackend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressBackendPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressClassName: (() { final guardedValue = map['ingressClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressRulePatch>(guardedValue, (value) => IngressRulePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressTLSPatch>(guardedValue, (value) => IngressTLSPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

