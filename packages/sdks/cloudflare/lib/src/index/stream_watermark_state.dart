// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamWatermark resources.
class StreamWatermarkState {
  /// The account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// The date and a time a watermark profile was created.
  final pulumi.Input<String?>? created;
  /// The source URL for a downloaded image. If the watermark profile was created via direct upload, this field is null.
  final pulumi.Input<String?>? downloadedFrom;
  /// The height of the image in pixels.
  final pulumi.Input<int?>? height;
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
  /// The size of the image in bytes.
  final pulumi.Input<double?>? size;
  /// The unique identifier for a watermark profile.
  final pulumi.Input<String?>? uid;
  /// URL of the watermark image to copy.
  final pulumi.Input<String?>? url;
  /// The width of the image in pixels.
  final pulumi.Input<int?>? width;

  /// Creates a new [StreamWatermarkState].
  /// [accountId] The account identifier tag.
  /// [created] The date and a time a watermark profile was created.
  /// [downloadedFrom] The source URL for a downloaded image. If the watermark profile was created via direct upload, this field is null.
  /// [height] The height of the image in pixels.
  /// [identifier] The unique identifier for a watermark profile.
  /// [name] A short description of the watermark profile.
  /// [opacity] The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
  /// [padding] The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
  /// [position] The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
  /// [scale] The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0`fills the entire video.
  /// [size] The size of the image in bytes.
  /// [uid] The unique identifier for a watermark profile.
  /// [url] URL of the watermark image to copy.
  /// [width] The width of the image in pixels.
  const StreamWatermarkState({
    this.accountId,
    this.created,
    this.downloadedFrom,
    this.height,
    this.identifier,
    this.name,
    this.opacity,
    this.padding,
    this.position,
    this.scale,
    this.size,
    this.uid,
    this.url,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'downloadedFrom': ?downloadedFrom,
      'height': ?height,
      'identifier': ?identifier,
      'name': ?name,
      'opacity': ?opacity,
      'padding': ?padding,
      'position': ?position,
      'scale': ?scale,
      'size': ?size,
      'uid': ?uid,
      'url': ?url,
      'width': ?width,
    };
  }

  factory StreamWatermarkState.fromMap(Map<String, dynamic> map) {
    return StreamWatermarkState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      downloadedFrom: (() { final guardedValue = map['downloadedFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opacity: (() { final guardedValue = map['opacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      padding: (() { final guardedValue = map['padding']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
