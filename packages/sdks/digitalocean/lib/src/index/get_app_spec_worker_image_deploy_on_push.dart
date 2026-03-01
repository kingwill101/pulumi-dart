// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecWorkerImageDeployOnPush {
  /// Whether to automatically deploy images pushed to DOCR.
  final bool? enabled;

  /// Creates a new [GetAppSpecWorkerImageDeployOnPush].
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  GetAppSpecWorkerImageDeployOnPush({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GetAppSpecWorkerImageDeployOnPush.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerImageDeployOnPush(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

