// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineStreamHttpCors {
  final pulumi.Input<List<String>> origins;

  /// Creates a new [GetPipelineStreamHttpCors].
  /// [origins] Required.
  const GetPipelineStreamHttpCors({
    required this.origins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origins': origins,
    };
  }

  factory GetPipelineStreamHttpCors.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamHttpCors(
      origins: pulumi.Input.fromValue((map['origins'] as List).cast<String>()),
    );
  }
}
