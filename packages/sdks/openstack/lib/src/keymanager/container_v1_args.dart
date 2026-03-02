// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_v1_acl.dart';
import 'container_v1_secret_ref.dart';

/// {@template pulumi_keymanager_container_v1_container_v1_args_doc}
/// The set of arguments for ContainerV1.
/// {@endtemplate}
/// {@macro pulumi_keymanager_container_v1_container_v1_args_doc}
class ContainerV1Args {
  /// Allows to control an access to a container. Currently only
  /// the `read` operation is supported. If not specified, the container is
  /// accessible project wide. The `read` structure is described below.
  final pulumi.Input<ContainerV1Acl>? acl;
  /// Human-readable name for the Container. Does not have
  /// to be unique.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a container. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 container.
  final pulumi.Input<String>? region;
  /// A set of dictionaries containing references to secrets. The structure is described
  /// below.
  final pulumi.Input<List<ContainerV1SecretRef>>? secretRefs;
  /// Used to indicate the type of container. Must be one of `generic`, `rsa` or `certificate`.
  final pulumi.Input<String> type;

  /// Creates a new [ContainerV1Args].
  /// [acl] Allows to control an access to a container. Currently only
  /// [name] Human-readable name for the Container. Does not have
  /// [region] The region in which to obtain the V1 KeyManager client.
  /// [secretRefs] A set of dictionaries containing references to secrets. The structure is described
  /// [type] Used to indicate the type of container. Must be one of `generic`, `rsa` or `certificate`.
  ContainerV1Args({
    this.acl,
    this.name,
    this.region,
    this.secretRefs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?pulumi.Input.mapOptionalInputValue<ContainerV1Acl, Map<String, dynamic>>(acl, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'secretRefs': ?pulumi.Input.mapOptionalInputValue<List<ContainerV1SecretRef>, List<Map<String, dynamic>>>(secretRefs, (value) => pulumi.Input.encodeList<ContainerV1SecretRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ContainerV1Args.fromMap(Map<String, dynamic> map) {
    return ContainerV1Args(
      acl: map['acl'] == null ? null : (ContainerV1Acl.fromMap((map['acl'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secretRefs: map['secretRefs'] == null ? null : (pulumi.Input.decodeList<ContainerV1SecretRef>(map['secretRefs'], (value) => ContainerV1SecretRef.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

