// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiOpenaiApiKeyModelVersion {
  /// Major version of the model
  final pulumi.Input<int>? major;

  /// Minor version of the model
  final pulumi.Input<int>? minor;

  /// Patch version of the model
  final pulumi.Input<int>? patch;

  /// Creates a new [GetGenaiOpenaiApiKeyModelVersion].
  /// [major] Major version of the model
  /// [minor] Minor version of the model
  /// [patch] Patch version of the model
  GetGenaiOpenaiApiKeyModelVersion({this.major, this.minor, this.patch});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'major': ?major, 'minor': ?minor, 'patch': ?patch};
  }

  factory GetGenaiOpenaiApiKeyModelVersion.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeyModelVersion(
      major: (() {
        final guardedValue = map['major'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minor: (() {
        final guardedValue = map['minor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      patch: (() {
        final guardedValue = map['patch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
