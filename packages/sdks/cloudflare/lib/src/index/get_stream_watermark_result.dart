// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamWatermark.
class GetStreamWatermarkResult {
  /// The account identifier tag.
  final String? accountId;
  /// The date and a time a watermark profile was created.
  final String? created;
  /// The source URL for a downloaded image. If the watermark profile was created via direct upload, this field is null.
  final String? downloadedFrom;
  /// The height of the image in pixels.
  final int? height;
  /// The unique identifier for a watermark profile.
  final String? identifier;
  /// A short description of the watermark profile.
  final String? name;
  /// The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
  final double? opacity;
  /// The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
  final double? padding;
  /// The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
  final String? position;
  /// The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0`fills the entire video.
  final double? scale;
  /// The size of the image in bytes.
  final double? size;
  /// The unique identifier for a watermark profile.
  final String? uid;
  /// The width of the image in pixels.
  final int? width;

  /// Creates a new [GetStreamWatermarkResult].
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
  /// [width] The width of the image in pixels.
  const GetStreamWatermarkResult({
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
      'width': ?width,
    };
  }

  factory GetStreamWatermarkResult.fromMap(Map<String, dynamic> map) {
    return GetStreamWatermarkResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      downloadedFrom: (() { final guardedValue = map['downloadedFrom']; if (guardedValue == null) return null; return guardedValue as String; })(),
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      opacity: (() { final guardedValue = map['opacity']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      padding: (() { final guardedValue = map['padding']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
