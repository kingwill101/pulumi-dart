// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// APIServerProfile represents an API server profile.
class APIServerProfile {
  /// API server visibility.
  final pulumi.Input<String>? visibility;

  /// Creates a new [APIServerProfile].
  /// [visibility] API server visibility.
  APIServerProfile({
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visibility': ?visibility,
    };
  }

  factory APIServerProfile.fromMap(Map<String, dynamic> map) {
    return APIServerProfile(
      visibility: map['visibility'] == null ? null : (map['visibility']! as String).input(),
    );
  }
}

