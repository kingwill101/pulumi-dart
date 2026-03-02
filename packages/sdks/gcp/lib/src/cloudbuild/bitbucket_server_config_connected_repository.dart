// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BitbucketServerConfigConnectedRepository {
  /// Identifier for the project storing the repository.
  final pulumi.Input<String> projectKey;
  /// Identifier for the repository.
  final pulumi.Input<String> repoSlug;

  /// Creates a new [BitbucketServerConfigConnectedRepository].
  /// [projectKey] Identifier for the project storing the repository.
  /// [repoSlug] Identifier for the repository.
  BitbucketServerConfigConnectedRepository({
    required this.projectKey,
    required this.repoSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectKey': projectKey,
      'repoSlug': repoSlug,
    };
  }

  factory BitbucketServerConfigConnectedRepository.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigConnectedRepository(
      projectKey: (map['projectKey'] as String).input(),
      repoSlug: (map['repoSlug'] as String).input(),
    );
  }
}

