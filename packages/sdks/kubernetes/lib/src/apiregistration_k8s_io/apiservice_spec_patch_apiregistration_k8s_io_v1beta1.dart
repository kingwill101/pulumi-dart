// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_reference_patch_apiregistration_k8s_io_v1beta1.dart';

/// APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
class APIServiceSpecPatchApiregistrationK8sIoV1beta1 {
  /// CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
  final pulumi.Input<String?>? caBundle;
  /// Group is the API group name this server hosts
  final pulumi.Input<String?>? group;
  /// GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
  final pulumi.Input<int?>? groupPriorityMinimum;
  /// InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
  final pulumi.Input<bool?>? insecureSkipTLSVerify;
  /// Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.
  final pulumi.Input<ServiceReferencePatchApiregistrationK8sIoV1beta1?>? service;
  /// Version is the API version this server hosts.  For example, "v1"
  final pulumi.Input<String?>? version;
  /// VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA &gt; beta &gt; alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final pulumi.Input<int?>? versionPriority;

  /// Creates a new [APIServiceSpecPatchApiregistrationK8sIoV1beta1].
  /// [caBundle] CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
  /// [group] Group is the API group name this server hosts
  /// [groupPriorityMinimum] GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
  /// [insecureSkipTLSVerify] InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
  /// [service] Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.
  /// [version] Version is the API version this server hosts.  For example, "v1"
  /// [versionPriority] VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA &gt; beta &gt; alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  const APIServiceSpecPatchApiregistrationK8sIoV1beta1({
    this.caBundle,
    this.group,
    this.groupPriorityMinimum,
    this.insecureSkipTLSVerify,
    this.service,
    this.version,
    this.versionPriority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caBundle': ?caBundle,
      'group': ?group,
      'groupPriorityMinimum': ?groupPriorityMinimum,
      'insecureSkipTLSVerify': ?insecureSkipTLSVerify,
      'service': ?pulumi.Input.mapOptionalInputValue<ServiceReferencePatchApiregistrationK8sIoV1beta1, Map<String, dynamic>>(service, (value) => value.toMap()),
      'version': ?version,
      'versionPriority': ?versionPriority,
    };
  }

  factory APIServiceSpecPatchApiregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return APIServiceSpecPatchApiregistrationK8sIoV1beta1(
      caBundle: (() { final guardedValue = map['caBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupPriorityMinimum: (() { final guardedValue = map['groupPriorityMinimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      insecureSkipTLSVerify: (() { final guardedValue = map['insecureSkipTLSVerify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceReferencePatchApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionPriority: (() { final guardedValue = map['versionPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
