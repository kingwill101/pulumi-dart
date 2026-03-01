// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_backend.dart';
import 'ingress_rule.dart';
import 'ingress_tls.dart';

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpec {
  /// defaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
  final IngressBackend? defaultBackend;
  /// ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  final String? ingressClassName;
  /// rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  final List<IngressRule>? rules;
  /// tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  final List<IngressTLS>? tls;

  /// Creates a new [IngressSpec].
  /// [defaultBackend] defaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
  /// [ingressClassName] ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  /// [rules] rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  /// [tls] tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  IngressSpec({
    this.defaultBackend,
    this.ingressClassName,
    this.rules,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBackend': ?defaultBackend == null ? null : defaultBackend!.toMap(),
      'ingressClassName': ?ingressClassName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<IngressRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'tls': ?tls == null ? null : pulumi.Input.encodeList<IngressTLS, Map<String, dynamic>>(tls!, (value) => value.toMap()),
    };
  }

  factory IngressSpec.fromMap(Map<String, dynamic> map) {
    return IngressSpec(
      defaultBackend: map['defaultBackend'] == null ? null : IngressBackend.fromMap((map['defaultBackend'] as Map).cast<String, dynamic>()),
      ingressClassName: map['ingressClassName'] == null ? null : map['ingressClassName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<IngressRule>(map['rules'], (value) => IngressRule.fromMap((value as Map).cast<String, dynamic>())),
      tls: map['tls'] == null ? null : pulumi.Input.decodeList<IngressTLS>(map['tls'], (value) => IngressTLS.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

