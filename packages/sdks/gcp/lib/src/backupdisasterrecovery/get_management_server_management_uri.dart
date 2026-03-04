// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagementServerManagementUri {
  /// The management console api endpoint.
  final pulumi.Input<String> api;

  /// The management console webUi.
  final pulumi.Input<String> webUi;

  /// Creates a new [GetManagementServerManagementUri].
  /// [api] The management console api endpoint.
  /// [webUi] The management console webUi.
  GetManagementServerManagementUri({required this.api, required this.webUi});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'api': api, 'webUi': webUi};
  }

  factory GetManagementServerManagementUri.fromMap(Map<String, dynamic> map) {
    return GetManagementServerManagementUri(
      api: pulumi.Input.fromValue(map['api'] as String),
      webUi: pulumi.Input.fromValue(map['webUi'] as String),
    );
  }
}
