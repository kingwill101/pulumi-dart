// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_acl.dart';
import 'get_container_consumer.dart';
import 'get_container_secret_ref.dart';

/// Result data returned by getContainer.
class GetContainerResult {
  /// The list of ACLs assigned to a container. The `read` structure is
  /// described below.
  final List<GetContainerAcl> acls;

  /// The list of the container consumers. The structure is described
  /// below.
  final List<GetContainerConsumer> consumers;

  /// The container reference / where to find the container.
  final String containerRef;

  /// The date the container ACL was created.
  final String createdAt;

  /// The creator of the container.
  final String creatorId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The name of the consumer.
  final String? name;

  /// See Argument Reference above.
  final String? region;

  /// A set of dictionaries containing references to secrets. The
  /// structure is described below.
  final List<GetContainerSecretRef> secretRefs;

  /// The status of the container.
  final String status;

  /// The container type.
  final String type;

  /// The date the container ACL was last updated.
  final String updatedAt;

  /// Creates a new [GetContainerResult].
  /// [acls] The list of ACLs assigned to a container. The `read` structure is
  /// [consumers] The list of the container consumers. The structure is described
  /// [containerRef] The container reference / where to find the container.
  /// [createdAt] The date the container ACL was created.
  /// [creatorId] The creator of the container.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the consumer.
  /// [region] See Argument Reference above.
  /// [secretRefs] A set of dictionaries containing references to secrets. The
  /// [status] The status of the container.
  /// [type] The container type.
  /// [updatedAt] The date the container ACL was last updated.
  GetContainerResult({
    required this.acls,
    required this.consumers,
    required this.containerRef,
    required this.createdAt,
    required this.creatorId,
    required this.id,
    this.name,
    this.region,
    required this.secretRefs,
    required this.status,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': pulumi.Input.encodeList<GetContainerAcl, Map<String, dynamic>>(
        acls,
        (value) => value.toMap(),
      ),
      'consumers':
          pulumi.Input.encodeList<GetContainerConsumer, Map<String, dynamic>>(
            consumers,
            (value) => value.toMap(),
          ),
      'containerRef': containerRef,
      'createdAt': createdAt,
      'creatorId': creatorId,
      'id': id,
      'name': ?name,
      'region': ?region,
      'secretRefs':
          pulumi.Input.encodeList<GetContainerSecretRef, Map<String, dynamic>>(
            secretRefs,
            (value) => value.toMap(),
          ),
      'status': status,
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetContainerResult.fromMap(Map<String, dynamic> map) {
    return GetContainerResult(
      acls: pulumi.Input.decodeList<GetContainerAcl>(
        map['acls']!,
        (value) =>
            GetContainerAcl.fromMap((value as Map).cast<String, dynamic>()),
      ),
      consumers: pulumi.Input.decodeList<GetContainerConsumer>(
        map['consumers']!,
        (value) => GetContainerConsumer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      containerRef: map['containerRef'] as String,
      createdAt: map['createdAt'] as String,
      creatorId: map['creatorId'] as String,
      id: map['id'] as String,
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secretRefs: pulumi.Input.decodeList<GetContainerSecretRef>(
        map['secretRefs']!,
        (value) => GetContainerSecretRef.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: map['status'] as String,
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
