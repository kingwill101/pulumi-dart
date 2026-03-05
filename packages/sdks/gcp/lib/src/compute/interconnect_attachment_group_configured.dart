// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_configured_availability_sla.dart';

class InterconnectAttachmentGroupConfigured {
  /// (Output)
  /// Which SLA this group is configured to support, and why this
  /// group does or does not meet that SLA's requirements.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupConfiguredAvailabilitySla>>? availabilitySlas;

  /// Creates a new [InterconnectAttachmentGroupConfigured].
  /// [availabilitySlas] (Output)
  InterconnectAttachmentGroupConfigured({
    this.availabilitySlas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySlas': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentGroupConfiguredAvailabilitySla>, List<Map<String, dynamic>>>(availabilitySlas, (value) => pulumi.Input.encodeList<InterconnectAttachmentGroupConfiguredAvailabilitySla, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterconnectAttachmentGroupConfigured.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupConfigured(
      availabilitySlas: (() { final guardedValue = map['availabilitySlas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectAttachmentGroupConfiguredAvailabilitySla>(guardedValue, (value) => InterconnectAttachmentGroupConfiguredAvailabilitySla.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

