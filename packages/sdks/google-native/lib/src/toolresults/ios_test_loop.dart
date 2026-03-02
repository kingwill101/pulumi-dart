// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A game loop test of an iOS application.
class IosTestLoop {
  /// Bundle ID of the app.
  final pulumi.Input<String>? bundleId;

  /// Creates a new [IosTestLoop].
  /// [bundleId] Bundle ID of the app.
  IosTestLoop({
    this.bundleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
    };
  }

  factory IosTestLoop.fromMap(Map<String, dynamic> map) {
    return IosTestLoop(
      bundleId: map['bundleId'] == null ? null : (map['bundleId'] as String).input(),
    );
  }
}

