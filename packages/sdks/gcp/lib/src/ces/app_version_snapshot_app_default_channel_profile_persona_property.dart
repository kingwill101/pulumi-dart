// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppDefaultChannelProfilePersonaProperty {
  /// (Output)
  /// The persona of the channel.
  /// Possible values:
  /// UNKNOWN
  /// CONCISE
  /// CHATTY
  final pulumi.Input<String>? persona;

  /// Creates a new [AppVersionSnapshotAppDefaultChannelProfilePersonaProperty].
  /// [persona] (Output)
  AppVersionSnapshotAppDefaultChannelProfilePersonaProperty({this.persona});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'persona': ?persona};
  }

  factory AppVersionSnapshotAppDefaultChannelProfilePersonaProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppDefaultChannelProfilePersonaProperty(
      persona: (() {
        final guardedValue = map['persona'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
