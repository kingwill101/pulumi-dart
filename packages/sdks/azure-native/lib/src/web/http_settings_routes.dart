// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the paths HTTP requests.
class HttpSettingsRoutes {
  /// The prefix that should precede all the authentication/authorization paths.
  final String? apiPrefix;

  /// Creates a new [HttpSettingsRoutes].
  /// [apiPrefix] The prefix that should precede all the authentication/authorization paths.
  HttpSettingsRoutes({
    this.apiPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPrefix': ?apiPrefix,
    };
  }

  factory HttpSettingsRoutes.fromMap(Map<String, dynamic> map) {
    return HttpSettingsRoutes(
      apiPrefix: map['apiPrefix'] == null ? null : map['apiPrefix'] as String,
    );
  }
}

