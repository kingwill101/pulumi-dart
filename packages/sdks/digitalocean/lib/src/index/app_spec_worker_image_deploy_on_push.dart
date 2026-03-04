// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecWorkerImageDeployOnPush {
  /// Whether to automatically deploy images pushed to DOCR.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AppSpecWorkerImageDeployOnPush].
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  AppSpecWorkerImageDeployOnPush({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory AppSpecWorkerImageDeployOnPush.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerImageDeployOnPush(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
