// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionSourceRepository {
  /// The URL pointing to the hosted repository where the function was defined at the time of deployment.
  final pulumi.Input<String> deployedUrl;
  /// The URL pointing to the hosted repository where the function is defined.
  final pulumi.Input<String> url;

  /// Creates a new [GetFunctionSourceRepository].
  /// [deployedUrl] The URL pointing to the hosted repository where the function was defined at the time of deployment.
  /// [url] The URL pointing to the hosted repository where the function is defined.
  const GetFunctionSourceRepository({
    required this.deployedUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedUrl': deployedUrl,
      'url': url,
    };
  }

  factory GetFunctionSourceRepository.fromMap(Map<String, dynamic> map) {
    return GetFunctionSourceRepository(
      deployedUrl: pulumi.Input.fromValue(map['deployedUrl'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
