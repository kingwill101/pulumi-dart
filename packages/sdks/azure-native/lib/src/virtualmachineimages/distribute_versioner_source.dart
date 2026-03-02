// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Generates version number based on version number of source image
class DistributeVersionerSource {
  /// Version numbering scheme to be used.
  /// Expected value is 'Source'.
  final pulumi.Input<String> scheme;

  /// Creates a new [DistributeVersionerSource].
  /// [scheme] Version numbering scheme to be used.
  DistributeVersionerSource({
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheme': scheme,
    };
  }

  factory DistributeVersionerSource.fromMap(Map<String, dynamic> map) {
    return DistributeVersionerSource(
      scheme: (map['scheme'] as String).input(),
    );
  }
}

