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
      allowedVpcs: map['allowedVpcs'] == null ? null : ((map['allowedVpcs'] as List).cast<String>()).input(),
      lookerServiceAttachmentUri: map['lookerServiceAttachmentUri'] == null ? null : (map['lookerServiceAttachmentUri'] as String).input(),
      serviceAttachments: map['serviceAttachments'] == null ? null : (pulumi.Input.decodeList<InstancePscConfigServiceAttachment>(map['serviceAttachments'], (value) => InstancePscConfigServiceAttachment.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

