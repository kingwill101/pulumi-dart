// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Generates version number based on version number of source image
class DistributeVersionerSourceResponse {
  /// Version numbering scheme to be used.
  /// Expected value is 'Source'.
  final pulumi.Input<String> scheme;

  /// Creates a new [DistributeVersionerSourceResponse].
  /// [scheme] Version numbering scheme to be used.
  DistributeVersionerSourceResponse({required this.scheme});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scheme': scheme};
  }

  factory DistributeVersionerSourceResponse.fromMap(Map<String, dynamic> map) {
    return DistributeVersionerSourceResponse(
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}
