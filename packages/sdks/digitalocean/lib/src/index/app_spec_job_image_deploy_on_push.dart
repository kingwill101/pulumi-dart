// ignore_for_file: unused_element, unnecessary_cast


class AppSpecJobImageDeployOnPush {
  /// Whether to automatically deploy images pushed to DOCR.
  final bool? enabled;

  /// Creates a new [AppSpecJobImageDeployOnPush].
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  AppSpecJobImageDeployOnPush({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AppSpecJobImageDeployOnPush.fromMap(Map<String, dynamic> map) {
    return AppSpecJobImageDeployOnPush(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

