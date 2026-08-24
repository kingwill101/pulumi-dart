// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineStreamHttpCors {
  final pulumi.Input<List<String>?>? origins;

  /// Creates a new [PipelineStreamHttpCors].
  /// [origins] Optional.
  const PipelineStreamHttpCors({
    this.origins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origins': ?origins,
    };
  }

  factory PipelineStreamHttpCors.fromMap(Map<String, dynamic> map) {
    return PipelineStreamHttpCors(
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
