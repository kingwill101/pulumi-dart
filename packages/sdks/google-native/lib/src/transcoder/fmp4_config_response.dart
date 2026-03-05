// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `fmp4` container configuration.
class Fmp4ConfigResponse {
  /// Optional. Specify the codec tag string that will be used in the media bitstream. When not specified, the codec appropriate value is used. Supported H265 codec tags: - `hvc1` (default) - `hev1`
  final pulumi.Input<String> codecTag;

  /// Creates a new [Fmp4ConfigResponse].
  /// [codecTag] Optional. Specify the codec tag string that will be used in the media bitstream. When not specified, the codec appropriate value is used. Supported H265 codec tags: - `hvc1` (default) - `hev1`
  Fmp4ConfigResponse({
    required this.codecTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codecTag': codecTag,
    };
  }

  factory Fmp4ConfigResponse.fromMap(Map<String, dynamic> map) {
    return Fmp4ConfigResponse(
      codecTag: pulumi.Input.fromValue(map['codecTag'] as String),
    );
  }
}

