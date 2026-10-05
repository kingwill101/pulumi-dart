// ignore_for_file: unused_element, unnecessary_cast

import 'mirror_config_response.dart';

/// Result data returned by getRepo.
class GetRepoResult {
  /// How this repository mirrors a repository managed by another service. Read-only field.
  final MirrorConfigResponse? mirrorConfig;
  /// Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`
  final String? name;
  /// How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.
  final Map<String, String>? pubsubConfigs;
  /// The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
  final String? size;
  /// URL to clone the repository from Google Cloud Source Repositories. Read-only field.
  final String? url;

  /// Creates a new [GetRepoResult].
  /// [mirrorConfig] How this repository mirrors a repository managed by another service. Read-only field.
  /// [name] Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`
  /// [pubsubConfigs] How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.
  /// [size] The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
  /// [url] URL to clone the repository from Google Cloud Source Repositories. Read-only field.
  const GetRepoResult({
    this.mirrorConfig,
    this.name,
    this.pubsubConfigs,
    this.size,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirrorConfig': ?mirrorConfig?.toMap(),
      'name': ?name,
      'pubsubConfigs': ?pubsubConfigs,
      'size': ?size,
      'url': ?url,
    };
  }

  factory GetRepoResult.fromMap(Map<String, dynamic> map) {
    return GetRepoResult(
      mirrorConfig: (() { final guardedValue = map['mirrorConfig']; if (guardedValue == null) return null; return MirrorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pubsubConfigs: (() { final guardedValue = map['pubsubConfigs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
