// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The debug setting.
class DebugSetting {
  /// Specifies the type of information to log for debugging. The permitted values are none, requestContent, responseContent, or both requestContent and responseContent separated by a comma. The default is none. When setting this value, carefully consider the type of information you are passing in during deployment. By logging information about the request or response, you could potentially expose sensitive data that is retrieved through the deployment operations.
  final pulumi.Input<String>? detailLevel;

  /// Creates a new [DebugSetting].
  /// [detailLevel] Specifies the type of information to log for debugging. The permitted values are none, requestContent, responseContent, or both requestContent and responseContent separated by a comma. The default is none. When setting this value, carefully consider the type of information you are passing in during deployment. By logging information about the request or response, you could potentially expose sensitive data that is retrieved through the deployment operations.
  const DebugSetting({
    this.detailLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailLevel': ?detailLevel,
    };
  }

  factory DebugSetting.fromMap(Map<String, dynamic> map) {
    return DebugSetting(
      detailLevel: (() { final guardedValue = map['detailLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

