// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupInitContainerVolumeGitRepo {
  /// Specifies the directory into which the repository should be cloned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? directory;
  /// Specifies the commit hash of the revision to be cloned. If unspecified, the HEAD revision is cloned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? revision;
  /// Specifies the Git repository to be cloned. Changing this forces a new resource to be created.
  final pulumi.Input<String> url;

  /// Creates a new [GroupInitContainerVolumeGitRepo].
  /// [directory] Specifies the directory into which the repository should be cloned. Changing this forces a new resource to be created.
  /// [revision] Specifies the commit hash of the revision to be cloned. If unspecified, the HEAD revision is cloned. Changing this forces a new resource to be created.
  /// [url] Specifies the Git repository to be cloned. Changing this forces a new resource to be created.
  GroupInitContainerVolumeGitRepo({
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

  factory GroupInitContainerVolumeGitRepo.fromMap(Map<String, dynamic> map) {
    return GroupInitContainerVolumeGitRepo(
      directory: map['directory'] == null ? null : (map['directory'] as String).input(),
      revision: map['revision'] == null ? null : (map['revision'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

