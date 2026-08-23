// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_response.dart';
import 'layer_response.dart';

/// Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class ImageOccurrenceResponse {
  /// This contains the base image URL for the derived image occurrence.
  final pulumi.Input<String> baseResourceUrl;
  /// The number of layers by which this image differs from the associated image basis.
  final pulumi.Input<int> distance;
  /// The fingerprint of the derived image.
  final pulumi.Input<FingerprintResponse> fingerprint;
  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final pulumi.Input<List<LayerResponse>> layerInfo;

  /// Creates a new [ImageOccurrenceResponse].
  /// [baseResourceUrl] This contains the base image URL for the derived image occurrence.
  /// [distance] The number of layers by which this image differs from the associated image basis.
  /// [fingerprint] The fingerprint of the derived image.
  /// [layerInfo] This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  const ImageOccurrenceResponse({
    required this.baseResourceUrl,
    required this.distance,
    required this.fingerprint,
    required this.layerInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseResourceUrl': baseResourceUrl,
      'distance': distance,
      'fingerprint': pulumi.Input.mapInputValue<FingerprintResponse, Map<String, dynamic>>(fingerprint, (value) => value.toMap()),
      'layerInfo': pulumi.Input.mapInputValue<List<LayerResponse>, List<Map<String, dynamic>>>(layerInfo, (value) => pulumi.Input.encodeList<LayerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageOccurrenceResponse(
      baseResourceUrl: pulumi.Input.fromValue(map['baseResourceUrl'] as String),
      distance: pulumi.Input.fromValue(map['distance'] as int),
      fingerprint: pulumi.Input.fromValue(FingerprintResponse.fromMap((map['fingerprint']! as Map).cast<String, dynamic>())),
      layerInfo: pulumi.Input.fromValue(pulumi.Input.decodeList<LayerResponse>(map['layerInfo']!, (value) => LayerResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
