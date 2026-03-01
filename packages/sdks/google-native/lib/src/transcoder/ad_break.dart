// ignore_for_file: unused_element, unnecessary_cast


/// Ad break.
class AdBreak {
  /// Start time in seconds for the ad break, relative to the output file timeline. The default is `0s`.
  final String? startTimeOffset;

  /// Creates a new [AdBreak].
  /// [startTimeOffset] Start time in seconds for the ad break, relative to the output file timeline. The default is `0s`.
  AdBreak({
    this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimeOffset': ?startTimeOffset,
    };
  }

  factory AdBreak.fromMap(Map<String, dynamic> map) {
    return AdBreak(
      startTimeOffset: map['startTimeOffset'] == null ? null : map['startTimeOffset'] as String,
    );
  }
}

