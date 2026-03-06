// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// iOS app information
class IosAppInfo {
  /// The name of the app. Required
  final pulumi.Input<String>? name;

  /// Creates a new [IosAppInfo].
  /// [name] The name of the app. Required
  const IosAppInfo({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory IosAppInfo.fromMap(Map<String, dynamic> map) {
    return IosAppInfo(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

