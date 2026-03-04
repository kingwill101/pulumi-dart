// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentGroupIntent {
  /// Which SLA the user intends this group to support.
  /// Possible values are: `PRODUCTION_NON_CRITICAL`, `PRODUCTION_CRITICAL`, `NO_SLA`, `AVAILABILITY_SLA_UNSPECIFIED`.
  final pulumi.Input<String>? availabilitySla;

  /// Creates a new [InterconnectAttachmentGroupIntent].
  /// [availabilitySla] Which SLA the user intends this group to support.
  InterconnectAttachmentGroupIntent({this.availabilitySla});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilitySla': ?availabilitySla};
  }

  factory InterconnectAttachmentGroupIntent.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupIntent(
      availabilitySla: (() {
        final guardedValue = map['availabilitySla'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
