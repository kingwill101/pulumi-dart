// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamWatermark {
  /// The date and a time a watermark profile was created.
  final pulumi.Input<String> created;
  /// The source URL for a downloaded image. If the watermark profile was created via direct upload, this field is null.
  final pulumi.Input<String> downloadedFrom;
  /// The height of the image in pixels.
  final pulumi.Input<int> height;
  /// A short description of the watermark profile.
  final pulumi.Input<String> name;
  /// The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
  final pulumi.Input<double> opacity;
  /// The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
  final pulumi.Input<double> padding;
  /// The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
  final pulumi.Input<String> position;
  /// The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0`fills the entire video.
  final pulumi.Input<double> scale;
  /// The size of the image in bytes.
  final pulumi.Input<double> size;
  /// The unique identifier for a watermark profile.
  final pulumi.Input<String> uid;
  /// The width of the image in pixels.
  final pulumi.Input<int> width;

  /// Creates a new [GetStreamWatermark].
  /// [created] The date and a time a watermark profile was created.
  /// [downloadedFrom] The source URL for a downloaded image. If the watermark profile was created via direct upload, this field is null.
  /// [height] The height of the image in pixels.
  /// [name] A short description of the watermark profile.
  /// [opacity] The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
  /// [padding] The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
  /// [position] The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
  /// [scale] The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0`fills the entire video.
  /// [size] The size of the image in bytes.
  /// [uid] The unique identifier for a watermark profile.
  /// [width] The width of the image in pixels.
  const GetStreamWatermark({
    required this.created,
    required this.downloadedFrom,
    required this.height,
    required this.name,
    required this.opacity,
    required this.padding,
    required this.position,
    required this.scale,
    required this.size,
    required this.uid,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'downloadedFrom': downloadedFrom,
      'height': height,
      'name': name,
      'opacity': opacity,
      'padding': padding,
      'position': position,
      'scale': scale,
      'size': size,
      'uid': uid,
      'width': width,
    };
  }

  factory GetStreamWatermark.fromMap(Map<String, dynamic> map) {
    return GetStreamWatermark(
      created: pulumi.Input.fromValue(map['created'] as String),
      downloadedFrom: pulumi.Input.fromValue(map['downloadedFrom'] as String),
      height: pulumi.Input.fromValue((map['height'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      opacity: pulumi.Input.fromValue((map['opacity'] as num).toDouble()),
      padding: pulumi.Input.fromValue((map['padding'] as num).toDouble()),
      position: pulumi.Input.fromValue(map['position'] as String),
      scale: pulumi.Input.fromValue((map['scale'] as num).toDouble()),
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      width: pulumi.Input.fromValue((map['width'] as num).toInt()),
    );
  }
}
