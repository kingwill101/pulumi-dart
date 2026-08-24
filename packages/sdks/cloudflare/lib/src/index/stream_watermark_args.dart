// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stream_watermark_stream_watermark_args_doc}
/// The set of arguments for StreamWatermark.
/// {@endtemplate}
/// {@macro pulumi_index_stream_watermark_stream_watermark_args_doc}
class StreamWatermarkArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// The unique identifier for a watermark profile.
  final pulumi.Input<String?>? identifier;
  /// A short description of the watermark profile.
  final pulumi.Input<String?>? name;
  /// The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
  final pulumi.Input<double?>? opacity;
  /// The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
  final pulumi.Input<double?>? padding;
  /// The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
  final pulumi.Input<String?>? position;
  /// The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0`fills the entire video.
  final pulumi.Input<double?>? scale;
  /// URL of the watermark image to copy.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamWatermarkArgs].
  /// [accountId] The account identifier tag.
  /// [identifier] The unique identifier for a watermark profile.
  /// [name] A short description of the watermark profile.
  /// [opacity] The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
  /// [padding] The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
  /// [position] The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
  /// [scale] The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0`fills the entire video.
  /// [url] URL of the watermark image to copy.
  const StreamWatermarkArgs({
    required this.accountId,
    this.identifier,
    this.name,
    this.opacity,
    this.padding,
    this.position,
    this.scale,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'identifier': ?identifier,
      'name': ?name,
      'opacity': ?opacity,
      'padding': ?padding,
      'position': ?position,
      'scale': ?scale,
      'url': ?url,
    };
  }

  factory StreamWatermarkArgs.fromMap(Map<String, dynamic> map) {
    return StreamWatermarkArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opacity: (() { final guardedValue = map['opacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      padding: (() { final guardedValue = map['padding']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
