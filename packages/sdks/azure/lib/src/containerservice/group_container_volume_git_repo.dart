// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupContainerVolumeGitRepo {
  /// Specifies the directory into which the repository should be cloned. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? directory;
  /// Specifies the commit hash of the revision to be cloned. If unspecified, the HEAD revision is cloned. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? revision;
  /// Specifies the Git repository to be cloned. Changing this forces a new resource to be created.
  final pulumi.Input<String> url;

  /// Creates a new [GroupContainerVolumeGitRepo].
  /// [directory] Specifies the directory into which the repository should be cloned. Changing this forces a new resource to be created.
  /// [revision] Specifies the commit hash of the revision to be cloned. If unspecified, the HEAD revision is cloned. Changing this forces a new resource to be created.
  /// [url] Specifies the Git repository to be cloned. Changing this forces a new resource to be created.
  const GroupContainerVolumeGitRepo({
    this.directory,
    this.revision,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': ?directory,
      'revision': ?revision,
      'url': url,
    };
  }

  factory GroupContainerVolumeGitRepo.fromMap(Map<String, dynamic> map) {
    return GroupContainerVolumeGitRepo(
      directory: (() { final guardedValue = map['directory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
