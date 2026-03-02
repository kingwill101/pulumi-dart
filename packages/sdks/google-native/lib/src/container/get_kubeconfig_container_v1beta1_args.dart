// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_container_v1beta1.dart';

/// {@template pulumi_container_v1beta1_get_kubeconfig_container_v1beta1_args_doc}
/// Arguments for getKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_get_kubeconfig_container_v1beta1_args_doc}
class GetKubeconfigContainerV1beta1Args {
  final pulumi.Input<ClusterContainerV1beta1> self;

  /// Creates a new [GetKubeconfigContainerV1beta1Args].
  /// [self] Required.
  GetKubeconfigContainerV1beta1Args({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
    };
  }

  factory GetKubeconfigContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigContainerV1beta1Args(
      self: (map['__self__'] as ClusterContainerV1beta1).input(),
    );
  }
}

