// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamsResultInput {
  /// The video height in pixels. A value of `-1` means the height is unknown. The value becomes available after the upload and before the video is ready.
  final pulumi.Input<int> height;
  /// The video width in pixels. A value of `-1` means the width is unknown. The value becomes available after the upload and before the video is ready.
  final pulumi.Input<int> width;

  /// Creates a new [GetStreamsResultInput].
  /// [height] The video height in pixels. A value of `-1` means the height is unknown. The value becomes available after the upload and before the video is ready.
  /// [width] The video width in pixels. A value of `-1` means the width is unknown. The value becomes available after the upload and before the video is ready.
  const GetStreamsResultInput({
    required this.height,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'width': width,
    };
  }

  factory GetStreamsResultInput.fromMap(Map<String, dynamic> map) {
    return GetStreamsResultInput(
      height: pulumi.Input.fromValue((map['height'] as num).toInt()),
      width: pulumi.Input.fromValue((map['width'] as num).toInt()),
    );
  }
}
