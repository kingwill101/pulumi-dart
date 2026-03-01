// ignore_for_file: unused_element, unnecessary_cast


class AppVersionSnapshotAppDefaultChannelProfilePersonaProperty {
  /// (Output)
  /// The persona of the channel.
  /// Possible values:
  /// UNKNOWN
  /// CONCISE
  /// CHATTY
  final String? persona;

  /// Creates a new [AppVersionSnapshotAppDefaultChannelProfilePersonaProperty].
  /// [persona] (Output)
  AppVersionSnapshotAppDefaultChannelProfilePersonaProperty({
    this.persona,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persona': ?persona,
    };
  }

  factory AppVersionSnapshotAppDefaultChannelProfilePersonaProperty.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppDefaultChannelProfilePersonaProperty(
      persona: map['persona'] == null ? null : map['persona'] as String,
    );
  }
}

