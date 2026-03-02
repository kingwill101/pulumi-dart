// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_coordinate.dart';

/// Overlaid image.
class Image {
  /// Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclusive. Set this to a value greater than `0.0`.
  final pulumi.Input<double>? alpha;
  /// Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set either `x` or `y` to `0.0`. To use the original image resolution, set both `x` and `y` to `0.0`.
  final pulumi.Input<NormalizedCoordinate>? resolution;
  /// URI of the image in Cloud Storage. For example, `gs://bucket/inputs/image.png`. Only PNG and JPEG images are supported.
  final pulumi.Input<String> uri;

  /// Creates a new [Image].
  /// [alpha] Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclusive. Set this to a value greater than `0.0`.
  /// [resolution] Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set either `x` or `y` to `0.0`. To use the original image resolution, set both `x` and `y` to `0.0`.
  /// [uri] URI of the image in Cloud Storage. For example, `gs://bucket/inputs/image.png`. Only PNG and JPEG images are supported.
  Image({
    this.alpha,
    this.resolution,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpha': ?alpha,
      'resolution': ?pulumi.Input.mapOptionalInputValue<NormalizedCoordinate, Map<String, dynamic>>(resolution, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      alpha: map['alpha'] == null ? null : (map['alpha'] as double).input(),
      resolution: map['resolution'] == null ? null : (NormalizedCoordinate.fromMap((map['resolution'] as Map).cast<String, dynamic>())).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

