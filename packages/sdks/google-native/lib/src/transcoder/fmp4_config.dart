// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `fmp4` container configuration.
class Fmp4Config {
  /// Optional. Specify the codec tag string that will be used in the media bitstream. When not specified, the codec appropriate value is used. Supported H265 codec tags: - `hvc1` (default) - `hev1`
  final pulumi.Input<String>? codecTag;

  /// Creates a new [Fmp4Config].
  /// [codecTag] Optional. Specify the codec tag string that will be used in the media bitstream. When not specified, the codec appropriate value is used. Supported H265 codec tags: - `hvc1` (default) - `hev1`
  Fmp4Config({
    this.codecTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codecTag': ?codecTag,
    };
  }

  factory Fmp4Config.fromMap(Map<String, dynamic> map) {
    return Fmp4Config(
      codecTag: map['codecTag'] == null ? null : (map['codecTag']! as String).input(),
    );
  }
}

