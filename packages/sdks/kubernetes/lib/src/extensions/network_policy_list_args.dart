// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'network_policy_extensions_v1beta1.dart';

/// {@template pulumi_extensions_v1beta1_network_policy_list_args_doc}
/// The set of arguments for NetworkPolicyList.
/// {@endtemplate}
/// {@macro pulumi_extensions_v1beta1_network_policy_list_args_doc}
class NetworkPolicyListArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Items is a list of schema objects.
  final pulumi.Input<List<NetworkPolicyExtensionsV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [NetworkPolicyListArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is a list of schema objects.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  NetworkPolicyListArgs({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory NetworkPolicyListArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyListArgs(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      items: ((map['items'] as List).cast<NetworkPolicyExtensionsV1beta1>()).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ListMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

