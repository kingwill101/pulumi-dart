// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecServiceImageDeployOnPush {
  /// Whether to automatically deploy images pushed to DOCR.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AppSpecServiceImageDeployOnPush].
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  AppSpecServiceImageDeployOnPush({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AppSpecServiceImageDeployOnPush.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceImageDeployOnPush(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

