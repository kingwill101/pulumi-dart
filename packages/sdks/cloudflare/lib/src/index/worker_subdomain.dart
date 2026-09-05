// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerSubdomain {
  /// Whether the *.workers.dev subdomain is enabled for the Worker.
  final pulumi.Input<bool?>? enabled;
  /// Prepend a version or preview prefix to this host suffix to form the *.workers.dev [preview URL](https://developers.cloudflare.com/workers/configuration/previews/) the Worker would serve on once previews are enabled, e.g. `https://&lt;prefix&gt;-my-worker.my-subdomain.workers.dev`. Present whenever the account owns a workers.dev subdomain, regardless of whether `previewsEnabled` is true, so presence does not imply preview URLs are currently live. Absent only when the account owns no workers.dev subdomain.
  final pulumi.Input<String?>? previewUrlSuffix;
  /// Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
  final pulumi.Input<bool?>? previewsEnabled;
  /// The address the Worker would serve on once its *.workers.dev subdomain is enabled. Present whenever the account owns a workers.dev subdomain, regardless of whether `enabled` is true, so presence does not imply the Worker is currently live at this URL. Absent only when the account owns no workers.dev subdomain.
  final pulumi.Input<String?>? url;

  /// Creates a new [WorkerSubdomain].
  /// [enabled] Whether the *.workers.dev subdomain is enabled for the Worker.
  /// [previewUrlSuffix] Prepend a version or preview prefix to this host suffix to form the *.workers.dev [preview URL](https://developers.cloudflare.com/workers/configuration/previews/) the Worker would serve on once previews are enabled, e.g. `https://&lt;prefix&gt;-my-worker.my-subdomain.workers.dev`. Present whenever the account owns a workers.dev subdomain, regardless of whether `previewsEnabled` is true, so presence does not imply preview URLs are currently live. Absent only when the account owns no workers.dev subdomain.
  /// [previewsEnabled] Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
  /// [url] The address the Worker would serve on once its *.workers.dev subdomain is enabled. Present whenever the account owns a workers.dev subdomain, regardless of whether `enabled` is true, so presence does not imply the Worker is currently live at this URL. Absent only when the account owns no workers.dev subdomain.
  const WorkerSubdomain({
    this.enabled,
    this.previewUrlSuffix,
    this.previewsEnabled,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'previewUrlSuffix': ?previewUrlSuffix,
      'previewsEnabled': ?previewsEnabled,
      'url': ?url,
    };
  }

  factory WorkerSubdomain.fromMap(Map<String, dynamic> map) {
    return WorkerSubdomain(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      previewUrlSuffix: (() { final guardedValue = map['previewUrlSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewsEnabled: (() { final guardedValue = map['previewsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
