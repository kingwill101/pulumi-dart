// ignore_for_file: unused_element, unnecessary_cast

import 'volume_error.dart';

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatus {
  /// attachError represents the last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final VolumeError? attachError;
  /// attached indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final bool attached;
  /// attachmentMetadata is populated with any information returned by the attach operation, upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final Map<String, String>? attachmentMetadata;
  /// detachError represents the last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  final VolumeError? detachError;

  /// Creates a new [VolumeAttachmentStatus].
  /// [attachError] attachError represents the last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attached] attached indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attachmentMetadata] attachmentMetadata is populated with any information returned by the attach operation, upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [detachError] detachError represents the last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  VolumeAttachmentStatus({
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

  factory VolumeAttachmentStatus.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentStatus(
      attachError: map['attachError'] == null ? null : VolumeError.fromMap((map['attachError'] as Map).cast<String, dynamic>()),
      attached: map['attached'] as bool,
      attachmentMetadata: map['attachmentMetadata'] == null ? null : (map['attachmentMetadata'] as Map).cast<String, String>(),
      detachError: map['detachError'] == null ? null : VolumeError.fromMap((map['detachError'] as Map).cast<String, dynamic>()),
    );
  }
}

