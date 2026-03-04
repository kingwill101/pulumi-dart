// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_configured_availability_sla_intended_sla_blocker.dart';

class InterconnectAttachmentGroupConfiguredAvailabilitySla {
  /// (Output)
  /// Which SLA this group supports. Options are the same as the
  /// intent.
  final pulumi.Input<String>? effectiveSla;

  /// (Output)
  /// Reasons why configuration.availabilitySLA.sla differs from
  /// intent.availabilitySLA. This list is empty if and only if those are the
  /// same.
  /// Structure is documented below.
  final pulumi.Input<
    List<InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker>
  >?
  intendedSlaBlockers;

  /// Creates a new [InterconnectAttachmentGroupConfiguredAvailabilitySla].
  /// [effectiveSla] (Output)
  /// [intendedSlaBlockers] (Output)
  InterconnectAttachmentGroupConfiguredAvailabilitySla({
    this.effectiveSla,
    this.intendedSlaBlockers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveSla': ?effectiveSla,
      'intendedSlaBlockers':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker
            >,
            List<Map<String, dynamic>>
          >(
            intendedSlaBlockers,
            (value) =>
                pulumi.Input.encodeList<
                  InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory InterconnectAttachmentGroupConfiguredAvailabilitySla.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectAttachmentGroupConfiguredAvailabilitySla(
      effectiveSla: (() {
        final guardedValue = map['effectiveSla'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intendedSlaBlockers: (() {
        final guardedValue = map['intendedSlaBlockers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker
          >(
            guardedValue,
            (value) =>
                InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
