// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceImageDeployOnPush {
  /// Whether to automatically deploy images pushed to DOCR.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GetAppSpecServiceImageDeployOnPush].
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  GetAppSpecServiceImageDeployOnPush({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GetAppSpecServiceImageDeployOnPush.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceImageDeployOnPush(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

