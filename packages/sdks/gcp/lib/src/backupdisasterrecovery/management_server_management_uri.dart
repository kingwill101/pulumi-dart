// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagementServerManagementUri {
  /// (Output)
  /// The management console api endpoint.
  final pulumi.Input<String>? api;
  /// (Output)
  /// The management console webUi.
  final pulumi.Input<String>? webUi;

  /// Creates a new [ManagementServerManagementUri].
  /// [api] (Output)
  /// [webUi] (Output)
  const ManagementServerManagementUri({
    this.api,
    this.webUi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?api,
      'webUi': ?webUi,
    };
  }

  factory ManagementServerManagementUri.fromMap(Map<String, dynamic> map) {
    return ManagementServerManagementUri(
      api: (() { final guardedValue = map['api']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webUi: (() { final guardedValue = map['webUi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
