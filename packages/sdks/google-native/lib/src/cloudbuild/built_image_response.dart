// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_span_response.dart';

/// An image built by the pipeline.
class BuiltImageResponse {
  /// Docker Registry 2.0 digest.
  final pulumi.Input<String> digest;
  /// Name used to push the container image to Google Container Registry, as presented to `docker push`.
  final pulumi.Input<String> name;
  /// Stores timing information for pushing the specified image.
  final pulumi.Input<TimeSpanResponse> pushTiming;

  /// Creates a new [BuiltImageResponse].
  /// [digest] Docker Registry 2.0 digest.
  /// [name] Name used to push the container image to Google Container Registry, as presented to `docker push`.
  /// [pushTiming] Stores timing information for pushing the specified image.
  const BuiltImageResponse({
    required this.digest,
    required this.name,
    required this.pushTiming,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'name': name,
      'pushTiming': pulumi.Input.mapInputValue<TimeSpanResponse, Map<String, dynamic>>(pushTiming, (value) => value.toMap()),
    };
  }

  factory BuiltImageResponse.fromMap(Map<String, dynamic> map) {
    return BuiltImageResponse(
      digest: pulumi.Input.fromValue(map['digest'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      pushTiming: pulumi.Input.fromValue(TimeSpanResponse.fromMap((map['pushTiming']! as Map).cast<String, dynamic>())),
    );
  }
}

