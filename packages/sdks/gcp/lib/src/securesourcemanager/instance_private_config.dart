// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePrivateConfig {
  /// CA pool resource, resource must in the format of `projects/{project}/locations/{location}/caPools/{ca_pool}`.
  final pulumi.Input<String>? caPool;
  /// (Output)
  /// Service Attachment for HTTP, resource is in the format of `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  final pulumi.Input<String>? httpServiceAttachment;
  /// 'Indicate if it's private instance.'
  final pulumi.Input<bool> isPrivate;
  /// (Output)
  /// Service Attachment for SSH, resource is in the format of `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  final pulumi.Input<String>? sshServiceAttachment;

  /// Creates a new [InstancePrivateConfig].
  /// [caPool] CA pool resource, resource must in the format of `projects/{project}/locations/{location}/caPools/{ca_pool}`.
  /// [httpServiceAttachment] (Output)
  /// [isPrivate] 'Indicate if it's private instance.'
  /// [sshServiceAttachment] (Output)
  const InstancePrivateConfig({
    this.caPool,
    this.httpServiceAttachment,
    required this.isPrivate,
    this.sshServiceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': ?caPool,
      'httpServiceAttachment': ?httpServiceAttachment,
      'isPrivate': isPrivate,
      'sshServiceAttachment': ?sshServiceAttachment,
    };
  }

  factory InstancePrivateConfig.fromMap(Map<String, dynamic> map) {
    return InstancePrivateConfig(
      caPool: (() { final guardedValue = map['caPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpServiceAttachment: (() { final guardedValue = map['httpServiceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrivate: pulumi.Input.fromValue(map['isPrivate'] as bool),
      sshServiceAttachment: (() { final guardedValue = map['sshServiceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

