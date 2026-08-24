// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerSubdomain {
  /// Whether the *.workers.dev subdomain is enabled for the Worker.
  final pulumi.Input<bool?>? enabled;
  /// Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
  final pulumi.Input<bool?>? previewsEnabled;

  /// Creates a new [WorkerSubdomain].
  /// [enabled] Whether the *.workers.dev subdomain is enabled for the Worker.
  /// [previewsEnabled] Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
  const WorkerSubdomain({
    this.enabled,
    this.previewsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'previewsEnabled': ?previewsEnabled,
    };
  }

  factory WorkerSubdomain.fromMap(Map<String, dynamic> map) {
    return WorkerSubdomain(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      previewsEnabled: (() { final guardedValue = map['previewsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
