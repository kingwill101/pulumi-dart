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
  InstancePrivateConfig({
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
      caPool: map['caPool'] == null ? null : (map['caPool']! as String).input(),
      httpServiceAttachment: map['httpServiceAttachment'] == null ? null : (map['httpServiceAttachment']! as String).input(),
      isPrivate: (map['isPrivate'] as bool).input(),
      sshServiceAttachment: map['sshServiceAttachment'] == null ? null : (map['sshServiceAttachment']! as String).input(),
    );
  }
}

