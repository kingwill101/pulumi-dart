// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultSubdomain {
  /// Whether the *.workers.dev subdomain is enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
  final pulumi.Input<bool> previewsEnabled;

  /// Creates a new [GetWorkersResultSubdomain].
  /// [enabled] Whether the *.workers.dev subdomain is enabled for the Worker.
  /// [previewsEnabled] Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
  const GetWorkersResultSubdomain({
    required this.enabled,
    required this.previewsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'previewsEnabled': previewsEnabled,
    };
  }

  factory GetWorkersResultSubdomain.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultSubdomain(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      previewsEnabled: pulumi.Input.fromValue(map['previewsEnabled'] as bool),
    );
  }
}
