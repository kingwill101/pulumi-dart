// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Generates version number that will be latest based on existing version numbers.
class DistributeVersionerLatestResponse {
  /// Major version for the generated version number. Determine what is "latest" based on versions with this value as the major version. -1 is equivalent to leaving it unset.
  final pulumi.Input<int>? major;
  /// Version numbering scheme to be used.
  /// Expected value is 'Latest'.
  final pulumi.Input<String> scheme;

  /// Creates a new [DistributeVersionerLatestResponse].
  /// [major] Major version for the generated version number. Determine what is "latest" based on versions with this value as the major version. -1 is equivalent to leaving it unset.
  /// [scheme] Version numbering scheme to be used.
  const DistributeVersionerLatestResponse({
    this.major,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'major': ?major,
      'scheme': scheme,
    };
  }

  factory DistributeVersionerLatestResponse.fromMap(Map<String, dynamic> map) {
    return DistributeVersionerLatestResponse(
      major: (() { final guardedValue = map['major']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}
