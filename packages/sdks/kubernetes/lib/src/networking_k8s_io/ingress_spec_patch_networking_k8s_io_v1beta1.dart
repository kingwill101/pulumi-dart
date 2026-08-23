// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_backend_patch_networking_k8s_io_v1beta1.dart';
import 'ingress_rule_patch_networking_k8s_io_v1beta1.dart';
import 'ingress_tlspatch_networking_k8s_io_v1beta1.dart';

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpecPatchNetworkingK8sIoV1beta1 {
  /// A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
  final pulumi.Input<IngressBackendPatchNetworkingK8sIoV1beta1>? backend;
  /// IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated `kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.
  final pulumi.Input<String>? ingressClassName;
  /// A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  final pulumi.Input<List<IngressRulePatchNetworkingK8sIoV1beta1>>? rules;
  /// TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  final pulumi.Input<List<IngressTLSPatchNetworkingK8sIoV1beta1>>? tls;

  /// Creates a new [IngressSpecPatchNetworkingK8sIoV1beta1].
  /// [backend] A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
  /// [ingressClassName] IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated `kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.
  /// [rules] A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  /// [tls] TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  const IngressSpecPatchNetworkingK8sIoV1beta1({
    this.backend,
    this.ingressClassName,
    this.rules,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': ?pulumi.Input.mapOptionalInputValue<IngressBackendPatchNetworkingK8sIoV1beta1, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'ingressClassName': ?ingressClassName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<IngressRulePatchNetworkingK8sIoV1beta1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<IngressRulePatchNetworkingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tls': ?pulumi.Input.mapOptionalInputValue<List<IngressTLSPatchNetworkingK8sIoV1beta1>, List<Map<String, dynamic>>>(tls, (value) => pulumi.Input.encodeList<IngressTLSPatchNetworkingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IngressSpecPatchNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressSpecPatchNetworkingK8sIoV1beta1(
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressBackendPatchNetworkingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressClassName: (() { final guardedValue = map['ingressClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressRulePatchNetworkingK8sIoV1beta1>(guardedValue, (value) => IngressRulePatchNetworkingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressTLSPatchNetworkingK8sIoV1beta1>(guardedValue, (value) => IngressTLSPatchNetworkingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
