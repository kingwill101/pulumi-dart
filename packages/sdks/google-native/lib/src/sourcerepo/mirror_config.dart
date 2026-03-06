// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration to automatically mirror a repository from another hosting service, for example GitHub or Bitbucket.
class MirrorConfig {
  /// ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.
  final pulumi.Input<String>? deployKeyId;
  /// URL of the main repository at the other hosting service.
  final pulumi.Input<String>? url;
  /// ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.
  final pulumi.Input<String>? webhookId;

  /// Creates a new [MirrorConfig].
  /// [deployKeyId] ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.
  /// [url] URL of the main repository at the other hosting service.
  /// [webhookId] ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.
  const MirrorConfig({
    this.deployKeyId,
    this.url,
    this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployKeyId': ?deployKeyId,
      'url': ?url,
      'webhookId': ?webhookId,
    };
  }

  factory MirrorConfig.fromMap(Map<String, dynamic> map) {
    return MirrorConfig(
      deployKeyId: (() { final guardedValue = map['deployKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookId: (() { final guardedValue = map['webhookId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

