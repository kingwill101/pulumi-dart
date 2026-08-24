// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineStreamsResultHttpCors {
  final pulumi.Input<List<String>> origins;

  /// Creates a new [GetPipelineStreamsResultHttpCors].
  /// [origins] Required.
  const GetPipelineStreamsResultHttpCors({
    required this.origins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origins': origins,
    };
  }

  factory GetPipelineStreamsResultHttpCors.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsResultHttpCors(
      origins: pulumi.Input.fromValue((map['origins'] as List).cast<String>()),
    );
  }
}
