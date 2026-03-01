// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecFunctionRoute {
  /// Paths must start with `/` and must be unique within the app.
  final String? path;
  /// An optional flag to preserve the path that is forwarded to the backend service.
  final bool? preservePathPrefix;

  /// Creates a new [GetAppSpecFunctionRoute].
  /// [path] Paths must start with `/` and must be unique within the app.
  /// [preservePathPrefix] An optional flag to preserve the path that is forwarded to the backend service.
  GetAppSpecFunctionRoute({
    this.path,
    this.preservePathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'preservePathPrefix': ?preservePathPrefix,
    };
  }

  factory GetAppSpecFunctionRoute.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionRoute(
      path: map['path'] == null ? null : map['path'] as String,
      preservePathPrefix: map['preservePathPrefix'] == null ? null : map['preservePathPrefix'] as bool,
    );
  }
}

