// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_private_config_custom_host_config.dart';

class InstancePrivateConfig {
  /// CA pool resource, resource must in the format of `projects/{project}/locations/{location}/caPools/{ca_pool}`.
  final pulumi.Input<String?>? caPool;
  /// Custom host configuration for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePrivateConfigCustomHostConfig?>? customHostConfig;
  /// (Output)
  /// Service Attachment for HTTP, resource is in the format of `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  final pulumi.Input<String?>? httpServiceAttachment;
  /// 'Indicate if it's private instance.'
  final pulumi.Input<bool> isPrivate;
  /// Optional. Additional allowed projects for setting up PSC connections.
  /// Instance host project is automatically allowed and does not need to be included in this list.
  final pulumi.Input<List<String>?>? pscAllowedProjects;
  /// (Output)
  /// Service Attachment for SSH, resource is in the format of `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  final pulumi.Input<String?>? sshServiceAttachment;

  /// Creates a new [InstancePrivateConfig].
  /// [caPool] CA pool resource, resource must in the format of `projects/{project}/locations/{location}/caPools/{ca_pool}`.
  /// [customHostConfig] Custom host configuration for the instance.
  /// [httpServiceAttachment] (Output)
  /// [isPrivate] 'Indicate if it's private instance.'
  /// [pscAllowedProjects] Optional. Additional allowed projects for setting up PSC connections.
  /// [sshServiceAttachment] (Output)
  const InstancePrivateConfig({
    this.caPool,
    this.customHostConfig,
    this.httpServiceAttachment,
    required this.isPrivate,
    this.pscAllowedProjects,
    this.sshServiceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': ?caPool,
      'customHostConfig': ?pulumi.Input.mapOptionalInputValue<InstancePrivateConfigCustomHostConfig, Map<String, dynamic>>(customHostConfig, (value) => value.toMap()),
      'httpServiceAttachment': ?httpServiceAttachment,
      'isPrivate': isPrivate,
      'pscAllowedProjects': ?pscAllowedProjects,
      'sshServiceAttachment': ?sshServiceAttachment,
    };
  }

  factory InstancePrivateConfig.fromMap(Map<String, dynamic> map) {
    return InstancePrivateConfig(
      caPool: (() { final guardedValue = map['caPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customHostConfig: (() { final guardedValue = map['customHostConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePrivateConfigCustomHostConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpServiceAttachment: (() { final guardedValue = map['httpServiceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrivate: pulumi.Input.fromValue(map['isPrivate'] as bool),
      pscAllowedProjects: (() { final guardedValue = map['pscAllowedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sshServiceAttachment: (() { final guardedValue = map['sshServiceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
