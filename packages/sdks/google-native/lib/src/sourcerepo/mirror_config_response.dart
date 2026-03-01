// ignore_for_file: unused_element, unnecessary_cast


/// Configuration to automatically mirror a repository from another hosting service, for example GitHub or Bitbucket.
class MirrorConfigResponse {
  /// ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.
  final String deployKeyId;
  /// URL of the main repository at the other hosting service.
  final String url;
  /// ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.
  final String webhookId;

  /// Creates a new [MirrorConfigResponse].
  /// [deployKeyId] ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.
  /// [url] URL of the main repository at the other hosting service.
  /// [webhookId] ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.
  MirrorConfigResponse({
    required this.deployKeyId,
    required this.url,
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployKeyId': deployKeyId,
      'url': url,
      'webhookId': webhookId,
    };
  }

  factory MirrorConfigResponse.fromMap(Map<String, dynamic> map) {
    return MirrorConfigResponse(
      deployKeyId: map['deployKeyId'] as String,
      url: map['url'] as String,
      webhookId: map['webhookId'] as String,
    );
  }
}

