// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAccountSubject holds detailed information for service-account-kind subject.
class ServiceAccountSubjectFlowcontrolApiserverK8sIoV1alpha1 {
  /// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  final pulumi.Input<String> name;
  /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  final pulumi.Input<String> namespace;

  /// Creates a new [ServiceAccountSubjectFlowcontrolApiserverK8sIoV1alpha1].
  /// [name] `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  /// [namespace] `namespace` is the namespace of matching ServiceAccount objects. Required.
  const ServiceAccountSubjectFlowcontrolApiserverK8sIoV1alpha1({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
    };
  }

  factory ServiceAccountSubjectFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ServiceAccountSubjectFlowcontrolApiserverK8sIoV1alpha1(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
