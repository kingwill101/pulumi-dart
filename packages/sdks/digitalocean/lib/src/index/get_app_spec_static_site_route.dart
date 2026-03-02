// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecStaticSiteRoute {
  /// Paths must start with `/` and must be unique within the app.
  final pulumi.Input<String>? path;
  /// An optional flag to preserve the path that is forwarded to the backend service.
  final pulumi.Input<bool>? preservePathPrefix;

  /// Creates a new [GetAppSpecStaticSiteRoute].
  /// [path] Paths must start with `/` and must be unique within the app.
  /// [preservePathPrefix] An optional flag to preserve the path that is forwarded to the backend service.
  GetAppSpecStaticSiteRoute({
    this.path,
    this.preservePathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'preservePathPrefix': ?preservePathPrefix,
    };
  }

  factory GetAppSpecStaticSiteRoute.fromMap(Map<String, dynamic> map) {
    return GetAppSpecStaticSiteRoute(
      path: map['path'] == null ? null : (map['path']! as String).input(),
      preservePathPrefix: map['preservePathPrefix'] == null ? null : (map['preservePathPrefix']! as bool).input(),
    );
  }
}

