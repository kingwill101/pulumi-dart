// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecJobImageDeployOnPush {
  /// Whether to automatically deploy images pushed to DOCR.
  final bool? enabled;

  /// Creates a new [GetAppSpecJobImageDeployOnPush].
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  GetAppSpecJobImageDeployOnPush({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GetAppSpecJobImageDeployOnPush.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobImageDeployOnPush(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

