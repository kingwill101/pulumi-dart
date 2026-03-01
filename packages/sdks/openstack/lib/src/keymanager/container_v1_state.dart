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
    pulumi.Output<ContainerV1Acl>? acl,
    pulumi.Output<List<ContainerV1Consumer>>? consumers,
    pulumi.Output<String>? containerRef,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? creatorId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<ContainerV1SecretRef>>? secretRefs,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updatedAt,
  }) :
      acl = pulumi.Input.asOptionalInput<ContainerV1Acl>(acl),
      consumers = pulumi.Input.asOptionalInput<List<ContainerV1Consumer>>(consumers),
      containerRef = pulumi.Input.asOptionalInput<String>(containerRef),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      creatorId = pulumi.Input.asOptionalInput<String>(creatorId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretRefs = pulumi.Input.asOptionalInput<List<ContainerV1SecretRef>>(secretRefs),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      acl: map['acl'] == null ? null : pulumi.Output.create<ContainerV1Acl>(ContainerV1Acl.fromMap((map['acl'] as Map).cast<String, dynamic>())),
      consumers: map['consumers'] == null ? null : pulumi.Output.create<List<ContainerV1Consumer>>(pulumi.Input.decodeList<ContainerV1Consumer>(map['consumers'], (value) => ContainerV1Consumer.fromMap((value as Map).cast<String, dynamic>()))),
      containerRef: map['containerRef'] == null ? null : pulumi.Output.create<String>(map['containerRef'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      creatorId: map['creatorId'] == null ? null : pulumi.Output.create<String>(map['creatorId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretRefs: map['secretRefs'] == null ? null : pulumi.Output.create<List<ContainerV1SecretRef>>(pulumi.Input.decodeList<ContainerV1SecretRef>(map['secretRefs'], (value) => ContainerV1SecretRef.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

