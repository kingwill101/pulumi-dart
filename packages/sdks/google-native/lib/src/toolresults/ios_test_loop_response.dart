// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A game loop test of an iOS application.
class IosTestLoopResponse {
  /// Bundle ID of the app.
  final pulumi.Input<String> bundleId;

  /// Creates a new [IosTestLoopResponse].
  /// [bundleId] Bundle ID of the app.
  const IosTestLoopResponse({
    required this.bundleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': bundleId,
    };
  }

  factory IosTestLoopResponse.fromMap(Map<String, dynamic> map) {
    return IosTestLoopResponse(
      bundleId: pulumi.Input.fromValue(map['bundleId'] as String),
    );
  }
}

