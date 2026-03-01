// ignore_for_file: unused_element, unnecessary_cast

import 'volume_error_patch_storage_k8s_io_v1alpha1.dart';

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatusPatchStorageK8sIoV1alpha1 {
  /// The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final VolumeErrorPatchStorageK8sIoV1alpha1? attachError;
  /// Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final bool? attached;
  /// Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final Map<String, String>? attachmentMetadata;
  /// The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  final VolumeErrorPatchStorageK8sIoV1alpha1? detachError;

  /// Creates a new [VolumeAttachmentStatusPatchStorageK8sIoV1alpha1].
  /// [attachError] The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attached] Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attachmentMetadata] Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [detachError] The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  VolumeAttachmentStatusPatchStorageK8sIoV1alpha1({
    this.attachError,
    this.attached,
    this.attachmentMetadata,
    this.detachError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachError': ?attachError == null ? null : attachError!.toMap(),
      'attached': ?attached,
      'attachmentMetadata': ?attachmentMetadata,
      'detachError': ?detachError == null ? null : detachError!.toMap(),
    };
  }

  factory VolumeAttachmentStatusPatchStorageK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentStatusPatchStorageK8sIoV1alpha1(
      attachError: map['attachError'] == null ? null : VolumeErrorPatchStorageK8sIoV1alpha1.fromMap((map['attachError'] as Map).cast<String, dynamic>()),
      attached: map['attached'] == null ? null : map['attached'] as bool,
      attachmentMetadata: map['attachmentMetadata'] == null ? null : (map['attachmentMetadata'] as Map).cast<String, String>(),
      detachError: map['detachError'] == null ? null : VolumeErrorPatchStorageK8sIoV1alpha1.fromMap((map['detachError'] as Map).cast<String, dynamic>()),
    );
  }
}

