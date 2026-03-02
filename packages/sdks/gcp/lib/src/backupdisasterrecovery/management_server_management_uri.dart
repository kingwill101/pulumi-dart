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
  ManagementServerManagementUri({
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
      api: map['api'] == null ? null : (map['api']! as String).input(),
      webUi: map['webUi'] == null ? null : (map['webUi']! as String).input(),
    );
  }
}

