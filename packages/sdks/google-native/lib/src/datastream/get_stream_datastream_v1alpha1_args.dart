// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1alpha1_get_stream_datastream_v1alpha1_args_doc}
/// Arguments for getStream.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_get_stream_datastream_v1alpha1_args_doc}
class GetStreamDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> streamId;

  /// Creates a new [GetStreamDatastreamV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [streamId] Required.
  GetStreamDatastreamV1alpha1Args({
    required this.location,
    this.project,
    required this.streamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'streamId': streamId,
    };
  }

  factory GetStreamDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetStreamDatastreamV1alpha1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamId: pulumi.Input.fromValue(map['streamId'] as String),
    );
  }
}

