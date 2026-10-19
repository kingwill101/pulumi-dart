// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppVpcScSetting {
  /// (Output)
  /// The allowed HTTP(s) origins that OpenAPI tools in the App are
  /// able to directly call when VPC Service Controls are enabled. These strings
  /// must match the origin exactly, including the port if specified. For
  /// example, "https://example.com" or "https://example.com:443". This list does
  /// not yet apply to Python tools that may make direct HTTP calls.
  final pulumi.Input<List<String>?>? allowedOrigins;

  /// Creates a new [AppVersionSnapshotAppVpcScSetting].
  /// [allowedOrigins] (Output)
  const AppVersionSnapshotAppVpcScSetting({
    this.allowedOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
    };
  }

  factory AppVersionSnapshotAppVpcScSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppVpcScSetting(
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
