// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'volume_attachment_spec.dart';
import 'volume_attachment_status.dart';

/// VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.
///
/// VolumeAttachment objects are non-namespaced.
class VolumeAttachment {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// spec represents specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
  final VolumeAttachmentSpec spec;
  /// status represents status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
  final VolumeAttachmentStatus? status;

  /// Creates a new [VolumeAttachment].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] spec represents specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
  /// [status] status represents status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
  VolumeAttachment({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': spec.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory VolumeAttachment.fromMap(Map<String, dynamic> map) {
    return VolumeAttachment(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: VolumeAttachmentSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : VolumeAttachmentStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

