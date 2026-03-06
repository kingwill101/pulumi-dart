// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionSourceRepository {
  /// The URL pointing to the hosted repository where the function was defined at the time of deployment.
  final pulumi.Input<String>? deployedUrl;
  /// The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats:
  ///
  /// * To refer to a specific commit: `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*`
  /// * To refer to a moveable alias (branch): `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*`. To refer to HEAD, use the `master` moveable alias.
  /// * To refer to a specific fixed alias (tag): `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*`
  final pulumi.Input<String> url;

  /// Creates a new [FunctionSourceRepository].
  /// [deployedUrl] The URL pointing to the hosted repository where the function was defined at the time of deployment.
  /// [url] The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats:
  const FunctionSourceRepository({
    this.deployedUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedUrl': ?deployedUrl,
      'url': url,
    };
  }

  factory FunctionSourceRepository.fromMap(Map<String, dynamic> map) {
    return FunctionSourceRepository(
      deployedUrl: (() { final guardedValue = map['deployedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

