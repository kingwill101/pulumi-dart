// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerResource {
  /// Limits describes the maximum amount of compute resources allowed.
  /// CPU Limit details:
  /// - For fractional CPU values (e.g. '0.5', '0.75', min '0.08') are also supported.
  /// - CPU allocation must comply with memory limits and concurrency rules described in:
  /// https://cloud.google.com/run/docs/configuring/services/cpu
  /// The values of the map is string form of the 'quantity' k8s type:
  /// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  final pulumi.Input<Map<String, String>> limits;
  /// Requests describes the minimum amount of compute resources required.
  /// If Requests is omitted for a container, it defaults to Limits if that is
  /// explicitly specified, otherwise to an implementation-defined value.
  /// The values of the map is string form of the 'quantity' k8s type:
  /// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  final pulumi.Input<Map<String, String>> requests;

  /// Creates a new [GetServiceTemplateSpecContainerResource].
  /// [limits] Limits describes the maximum amount of compute resources allowed.
  /// [requests] Requests describes the minimum amount of compute resources required.
  const GetServiceTemplateSpecContainerResource({
    required this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': limits,
      'requests': requests,
    };
  }

  factory GetServiceTemplateSpecContainerResource.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerResource(
      limits: pulumi.Input.fromValue((map['limits'] as Map).cast<String, String>()),
      requests: pulumi.Input.fromValue((map['requests'] as Map).cast<String, String>()),
    );
  }
}

