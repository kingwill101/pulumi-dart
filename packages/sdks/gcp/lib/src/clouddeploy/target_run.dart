// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetRun {
  /// Required. The location where the Cloud Run Service should be located. Format is `projects/{project}/locations/{location}`.
  final pulumi.Input<String> location;

  /// Creates a new [TargetRun].
  /// [location] Required. The location where the Cloud Run Service should be located. Format is `projects/{project}/locations/{location}`.
  TargetRun({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory TargetRun.fromMap(Map<String, dynamic> map) {
    return TargetRun(
      location: (map['location'] as String).input(),
    );
  }
}

