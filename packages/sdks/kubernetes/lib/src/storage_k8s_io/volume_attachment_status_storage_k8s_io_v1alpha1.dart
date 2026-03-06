// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_error_storage_k8s_io_v1alpha1.dart';

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatusStorageK8sIoV1alpha1 {
  /// The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final pulumi.Input<VolumeErrorStorageK8sIoV1alpha1>? attachError;
  /// Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final pulumi.Input<bool> attached;
  /// Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final pulumi.Input<Map<String, String>>? attachmentMetadata;
  /// The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  final pulumi.Input<VolumeErrorStorageK8sIoV1alpha1>? detachError;

  /// Creates a new [VolumeAttachmentStatusStorageK8sIoV1alpha1].
  /// [attachError] The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attached] Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attachmentMetadata] Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [detachError] The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  const VolumeAttachmentStatusStorageK8sIoV1alpha1({
    this.attachError,
    required this.attached,
    this.attachmentMetadata,
    this.detachError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachError': ?pulumi.Input.mapOptionalInputValue<VolumeErrorStorageK8sIoV1alpha1, Map<String, dynamic>>(attachError, (value) => value.toMap()),
      'attached': attached,
      'attachmentMetadata': ?attachmentMetadata,
      'detachError': ?pulumi.Input.mapOptionalInputValue<VolumeErrorStorageK8sIoV1alpha1, Map<String, dynamic>>(detachError, (value) => value.toMap()),
    };
  }

  factory VolumeAttachmentStatusStorageK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentStatusStorageK8sIoV1alpha1(
      attachError: (() { final guardedValue = map['attachError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeErrorStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attached: pulumi.Input.fromValue(map['attached'] as bool),
      attachmentMetadata: (() { final guardedValue = map['attachmentMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      detachError: (() { final guardedValue = map['detachError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeErrorStorageK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

