// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersKvNamespacesResult {
  /// Namespace identifier tag.
  final pulumi.Input<String> id;
  /// True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  final pulumi.Input<bool> supportsUrlEncoding;
  /// A human-readable string name for a Namespace.
  final pulumi.Input<String> title;

  /// Creates a new [GetWorkersKvNamespacesResult].
  /// [id] Namespace identifier tag.
  /// [supportsUrlEncoding] True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  /// [title] A human-readable string name for a Namespace.
  const GetWorkersKvNamespacesResult({
    required this.id,
    required this.supportsUrlEncoding,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'supportsUrlEncoding': supportsUrlEncoding,
      'title': title,
    };
  }

  factory GetWorkersKvNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvNamespacesResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      supportsUrlEncoding: pulumi.Input.fromValue(map['supportsUrlEncoding'] as bool),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
