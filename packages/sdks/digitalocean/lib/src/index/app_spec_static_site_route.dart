// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecStaticSiteRoute {
  /// Paths must start with `/` and must be unique within the app.
  final pulumi.Input<String>? path;
  /// An optional flag to preserve the path that is forwarded to the backend service.
  final pulumi.Input<bool>? preservePathPrefix;

  /// Creates a new [AppSpecStaticSiteRoute].
  /// [path] Paths must start with `/` and must be unique within the app.
  /// [preservePathPrefix] An optional flag to preserve the path that is forwarded to the backend service.
  const AppSpecStaticSiteRoute({
    this.path,
    this.preservePathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'preservePathPrefix': ?preservePathPrefix,
    };
  }

  factory AppSpecStaticSiteRoute.fromMap(Map<String, dynamic> map) {
    return AppSpecStaticSiteRoute(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preservePathPrefix: (() { final guardedValue = map['preservePathPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

