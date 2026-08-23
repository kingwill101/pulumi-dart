// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_error.dart';

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatus {
  /// attachError represents the last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final pulumi.Input<VolumeError>? attachError;
  /// attached indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final pulumi.Input<bool> attached;
  /// attachmentMetadata is populated with any information returned by the attach operation, upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final pulumi.Input<Map<String, String>>? attachmentMetadata;
  /// detachError represents the last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  final pulumi.Input<VolumeError>? detachError;

  /// Creates a new [VolumeAttachmentStatus].
  /// [attachError] attachError represents the last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attached] attached indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [attachmentMetadata] attachmentMetadata is populated with any information returned by the attach operation, upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  /// [detachError] detachError represents the last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  const VolumeAttachmentStatus({
    this.attachError,
    required this.attached,
    this.attachmentMetadata,
    this.detachError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachError': ?pulumi.Input.mapOptionalInputValue<VolumeError, Map<String, dynamic>>(attachError, (value) => value.toMap()),
      'attached': attached,
      'attachmentMetadata': ?attachmentMetadata,
      'detachError': ?pulumi.Input.mapOptionalInputValue<VolumeError, Map<String, dynamic>>(detachError, (value) => value.toMap()),
    };
  }

  factory VolumeAttachmentStatus.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentStatus(
      attachError: (() { final guardedValue = map['attachError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attached: pulumi.Input.fromValue(map['attached'] as bool),
      attachmentMetadata: (() { final guardedValue = map['attachmentMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      detachError: (() { final guardedValue = map['detachError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
