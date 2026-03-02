// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes SourceRepository, used to represent parameters related to source repository where a function is hosted.
class SourceRepositoryResponse {
  /// The URL pointing to the hosted repository where the function were defined at the time of deployment. It always points to a specific commit in the format described above.
  final pulumi.Input<String> deployedUrl;
  /// The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats: To refer to a specific commit: `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*` To refer to a moveable alias (branch): `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*` In particular, to refer to HEAD use `master` moveable alias. To refer to a specific fixed alias (tag): `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*` You may omit `paths/*` if you want to use the main directory.
  final pulumi.Input<String> url;

  /// Creates a new [SourceRepositoryResponse].
  /// [deployedUrl] The URL pointing to the hosted repository where the function were defined at the time of deployment. It always points to a specific commit in the format described above.
  /// [url] The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats: To refer to a specific commit: `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*` To refer to a moveable alias (branch): `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*` In particular, to refer to HEAD use `master` moveable alias. To refer to a specific fixed alias (tag): `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*` You may omit `paths/*` if you want to use the main directory.
  SourceRepositoryResponse({
    required this.deployedUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedUrl': deployedUrl,
      'url': url,
    };
  }

  factory SourceRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return SourceRepositoryResponse(
      deployedUrl: (map['deployedUrl'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

