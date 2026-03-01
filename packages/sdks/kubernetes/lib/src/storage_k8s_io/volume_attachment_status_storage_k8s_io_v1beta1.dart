// ignore_for_file: unused_element, unnecessary_cast

import 'volume_error_storage_k8s_io_v1beta1.dart';

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatusStorageK8sIoV1beta1 {
  /// The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final VolumeErrorStorageK8sIoV1beta1? attachError;
  /// Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final bool attached;
  /// Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final Map<String, String>? attachmentMetadata;
  /// The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  final VolumeErrorStorageK8sIoV1beta1? detachError;

  /// Creates a new [VolumeAttachmentStatusStorageK8sIoV1beta1].
  /// [attachError] The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attached] Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attachmentMetadata] Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [detachError] The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  VolumeAttachmentStatusStorageK8sIoV1beta1({
    this.attachError,
    required this.attached,
    this.attachmentMetadata,
    this.detachError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachError': ?attachError == null ? null : attachError!.toMap(),
      'attached': attached,
      'attachmentMetadata': ?attachmentMetadata,
      'detachError': ?detachError == null ? null : detachError!.toMap(),
    };
  }

  factory VolumeAttachmentStatusStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentStatusStorageK8sIoV1beta1(
      attachError: map['attachError'] == null ? null : VolumeErrorStorageK8sIoV1beta1.fromMap((map['attachError'] as Map).cast<String, dynamic>()),
      attached: map['attached'] as bool,
      attachmentMetadata: map['attachmentMetadata'] == null ? null : (map['attachmentMetadata'] as Map).cast<String, String>(),
      detachError: map['detachError'] == null ? null : VolumeErrorStorageK8sIoV1beta1.fromMap((map['detachError'] as Map).cast<String, dynamic>()),
    );
  }
}

