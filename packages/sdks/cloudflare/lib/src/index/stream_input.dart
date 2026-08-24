// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamInput {
  /// The video height in pixels. A value of `-1` means the height is unknown. The value becomes available after the upload and before the video is ready.
  final pulumi.Input<int?>? height;
  /// The video width in pixels. A value of `-1` means the width is unknown. The value becomes available after the upload and before the video is ready.
  final pulumi.Input<int?>? width;

  /// Creates a new [StreamInput].
  /// [height] The video height in pixels. A value of `-1` means the height is unknown. The value becomes available after the upload and before the video is ready.
  /// [width] The video width in pixels. A value of `-1` means the width is unknown. The value becomes available after the upload and before the video is ready.
  const StreamInput({
    this.height,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': ?height,
      'width': ?width,
    };
  }

  factory StreamInput.fromMap(Map<String, dynamic> map) {
    return StreamInput(
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
