// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_coordinate_response.dart';

/// Overlaid image.
class ImageResponse {
  /// Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclusive. Set this to a value greater than `0.0`.
  final pulumi.Input<double> alpha;

  /// Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set either `x` or `y` to `0.0`. To use the original image resolution, set both `x` and `y` to `0.0`.
  final pulumi.Input<NormalizedCoordinateResponse> resolution;

  /// URI of the image in Cloud Storage. For example, `gs://bucket/inputs/image.png`. Only PNG and JPEG images are supported.
  final pulumi.Input<String> uri;

  /// Creates a new [ImageResponse].
  /// [alpha] Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclusive. Set this to a value greater than `0.0`.
  /// [resolution] Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set either `x` or `y` to `0.0`. To use the original image resolution, set both `x` and `y` to `0.0`.
  /// [uri] URI of the image in Cloud Storage. For example, `gs://bucket/inputs/image.png`. Only PNG and JPEG images are supported.
  ImageResponse({
    required this.alpha,
    required this.resolution,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpha': alpha,
      'resolution':
          pulumi.Input.mapInputValue<
            NormalizedCoordinateResponse,
            Map<String, dynamic>
          >(resolution, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory ImageResponse.fromMap(Map<String, dynamic> map) {
    return ImageResponse(
      alpha: pulumi.Input.fromValue(map['alpha'] as double),
      resolution: pulumi.Input.fromValue(
        NormalizedCoordinateResponse.fromMap(
          (map['resolution']! as Map).cast<String, dynamic>(),
        ),
      ),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
