// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersKvNamespacesResult {
  /// Namespace identifier tag.
  final pulumi.Input<String> id;
  /// Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// Available values: "eu", "fedramp", "us".
  final pulumi.Input<String> jurisdiction;
  /// True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  final pulumi.Input<bool> supportsUrlEncoding;
  /// A human-readable string name for a Namespace.
  final pulumi.Input<String> title;

  /// Creates a new [GetWorkersKvNamespacesResult].
  /// [id] Namespace identifier tag.
  /// [jurisdiction] Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// [supportsUrlEncoding] True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  /// [title] A human-readable string name for a Namespace.
  const GetWorkersKvNamespacesResult({
    required this.id,
    required this.jurisdiction,
    required this.supportsUrlEncoding,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'jurisdiction': jurisdiction,
      'supportsUrlEncoding': supportsUrlEncoding,
      'title': title,
    };
  }

  factory GetWorkersKvNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvNamespacesResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      jurisdiction: pulumi.Input.fromValue(map['jurisdiction'] as String),
      supportsUrlEncoding: pulumi.Input.fromValue(map['supportsUrlEncoding'] as bool),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
