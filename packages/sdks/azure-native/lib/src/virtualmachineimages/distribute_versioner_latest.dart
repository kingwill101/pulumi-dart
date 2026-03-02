// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Generates version number that will be latest based on existing version numbers.
class DistributeVersionerLatest {
  /// Major version for the generated version number. Determine what is "latest" based on versions with this value as the major version. -1 is equivalent to leaving it unset.
  final pulumi.Input<int>? major;
  /// Version numbering scheme to be used.
  /// Expected value is 'Latest'.
  final pulumi.Input<String> scheme;

  /// Creates a new [DistributeVersionerLatest].
  /// [major] Major version for the generated version number. Determine what is "latest" based on versions with this value as the major version. -1 is equivalent to leaving it unset.
  /// [scheme] Version numbering scheme to be used.
  DistributeVersionerLatest({
    this.major,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'major': ?major,
      'scheme': scheme,
    };
  }

  factory DistributeVersionerLatest.fromMap(Map<String, dynamic> map) {
    return DistributeVersionerLatest(
      major: map['major'] == null ? null : (map['major']! as int).input(),
      scheme: (map['scheme'] as String).input(),
    );
  }
}

