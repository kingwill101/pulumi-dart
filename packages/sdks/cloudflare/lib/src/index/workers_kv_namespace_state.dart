// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkersKvNamespace resources.
class WorkersKvNamespaceState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// Available values: "eu", "fedramp", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  final pulumi.Input<bool?>? supportsUrlEncoding;
  /// A human-readable string name for a Namespace.
  final pulumi.Input<String?>? title;

  /// Creates a new [WorkersKvNamespaceState].
  /// [accountId] Identifier.
  /// [jurisdiction] Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// [supportsUrlEncoding] True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  /// [title] A human-readable string name for a Namespace.
  const WorkersKvNamespaceState({
    this.accountId,
    this.jurisdiction,
    this.supportsUrlEncoding,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'jurisdiction': ?jurisdiction,
      'supportsUrlEncoding': ?supportsUrlEncoding,
      'title': ?title,
    };
  }

  factory WorkersKvNamespaceState.fromMap(Map<String, dynamic> map) {
    return WorkersKvNamespaceState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportsUrlEncoding: (() { final guardedValue = map['supportsUrlEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
