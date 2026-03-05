// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_psc_config_service_attachment.dart';

class InstancePscConfig {
  /// List of VPCs that are allowed ingress into the Looker instance.
  final pulumi.Input<List<String>>? allowedVpcs;
  /// (Output)
  /// URI of the Looker service attachment.
  final pulumi.Input<String>? lookerServiceAttachmentUri;
  /// List of egress service attachment configurations.
  /// Structure is documented below.
  final pulumi.Input<List<InstancePscConfigServiceAttachment>>? serviceAttachments;

  /// Creates a new [InstancePscConfig].
  /// [allowedVpcs] List of VPCs that are allowed ingress into the Looker instance.
  /// [lookerServiceAttachmentUri] (Output)
  /// [serviceAttachments] List of egress service attachment configurations.
  InstancePscConfig({
    this.allowedVpcs,
    this.lookerServiceAttachmentUri,
    this.serviceAttachments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedVpcs': ?allowedVpcs,
      'lookerServiceAttachmentUri': ?lookerServiceAttachmentUri,
      'serviceAttachments': ?pulumi.Input.mapOptionalInputValue<List<InstancePscConfigServiceAttachment>, List<Map<String, dynamic>>>(serviceAttachments, (value) => pulumi.Input.encodeList<InstancePscConfigServiceAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstancePscConfig.fromMap(Map<String, dynamic> map) {
    return InstancePscConfig(
      allowedVpcs: (() { final guardedValue = map['allowedVpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lookerServiceAttachmentUri: (() { final guardedValue = map['lookerServiceAttachmentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAttachments: (() { final guardedValue = map['serviceAttachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstancePscConfigServiceAttachment>(guardedValue, (value) => InstancePscConfigServiceAttachment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

