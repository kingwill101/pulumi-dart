// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_v1_acl.dart';
import 'container_v1_consumer.dart';
import 'container_v1_secret_ref.dart';

/// Input properties used for looking up and filtering ContainerV1 resources.
class ContainerV1State {
  /// Allows to control an access to a container. Currently only
  /// the `read` operation is supported. If not specified, the container is
  /// accessible project wide. The `read` structure is described below.
  final pulumi.Input<ContainerV1Acl>? acl;
  /// The list of the container consumers. The structure is described below.
  final pulumi.Input<List<ContainerV1Consumer>>? consumers;
  /// The container reference / where to find the container.
  final pulumi.Input<String>? containerRef;
  /// The date the container was created.
  final pulumi.Input<String>? createdAt;
  /// The creator of the container.
  final pulumi.Input<String>? creatorId;
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
  /// The status of the container.
  final pulumi.Input<String>? status;
  /// Used to indicate the type of container. Must be one of `generic`, `rsa` or `certificate`.
  final pulumi.Input<String>? type;
  /// The date the container was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [ContainerV1State].
  /// [acl] Allows to control an access to a container. Currently only
  /// [consumers] The list of the container consumers. The structure is described below.
  /// [containerRef] The container reference / where to find the container.
  /// [createdAt] The date the container was created.
  /// [creatorId] The creator of the container.
  /// [name] Human-readable name for the Container. Does not have
  /// [region] The region in which to obtain the V1 KeyManager client.
  /// [secretRefs] A set of dictionaries containing references to secrets. The structure is described
  /// [status] The status of the container.
  /// [type] Used to indicate the type of container. Must be one of `generic`, `rsa` or `certificate`.
  /// [updatedAt] The date the container was last updated.
  ContainerV1State({
    this.acl,
    this.consumers,
    this.containerRef,
    this.createdAt,
    this.creatorId,
    this.name,
    this.region,
    this.secretRefs,
    this.status,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?pulumi.Input.mapOptionalInputValue<ContainerV1Acl, Map<String, dynamic>>(acl, (value) => value.toMap()),
      'consumers': ?pulumi.Input.mapOptionalInputValue<List<ContainerV1Consumer>, List<Map<String, dynamic>>>(consumers, (value) => pulumi.Input.encodeList<ContainerV1Consumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerRef': ?containerRef,
      'createdAt': ?createdAt,
      'creatorId': ?creatorId,
      'name': ?name,
      'region': ?region,
      'secretRefs': ?pulumi.Input.mapOptionalInputValue<List<ContainerV1SecretRef>, List<Map<String, dynamic>>>(secretRefs, (value) => pulumi.Input.encodeList<ContainerV1SecretRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory ContainerV1State.fromMap(Map<String, dynamic> map) {
    return ContainerV1State(
      acl: map['acl'] == null ? null : (ContainerV1Acl.fromMap((map['acl'] as Map).cast<String, dynamic>())).input(),
      consumers: map['consumers'] == null ? null : (pulumi.Input.decodeList<ContainerV1Consumer>(map['consumers'], (value) => ContainerV1Consumer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerRef: map['containerRef'] == null ? null : (map['containerRef'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      creatorId: map['creatorId'] == null ? null : (map['creatorId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secretRefs: map['secretRefs'] == null ? null : (pulumi.Input.decodeList<ContainerV1SecretRef>(map['secretRefs'], (value) => ContainerV1SecretRef.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

