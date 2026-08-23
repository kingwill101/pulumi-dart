// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The URIs that are used to perform a retrieval of a public blob, queue, table, web or dfs object via a microsoft routing endpoint.
class StorageAccountMicrosoftEndpointsResponse {
  /// Gets the blob endpoint.
  final pulumi.Input<String> blob;
  /// Gets the dfs endpoint.
  final pulumi.Input<String> dfs;
  /// Gets the file endpoint.
  final pulumi.Input<String> file;
  /// Gets the queue endpoint.
  final pulumi.Input<String> queue;
  /// Gets the table endpoint.
  final pulumi.Input<String> table;
  /// Gets the web endpoint.
  final pulumi.Input<String> web;

  /// Creates a new [StorageAccountMicrosoftEndpointsResponse].
  /// [blob] Gets the blob endpoint.
  /// [dfs] Gets the dfs endpoint.
  /// [file] Gets the file endpoint.
  /// [queue] Gets the queue endpoint.
  /// [table] Gets the table endpoint.
  /// [web] Gets the web endpoint.
  const StorageAccountMicrosoftEndpointsResponse({
    required this.blob,
    required this.dfs,
    required this.file,
    required this.queue,
    required this.table,
    required this.web,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': blob,
      'dfs': dfs,
      'file': file,
      'queue': queue,
      'table': table,
      'web': web,
    };
  }

  factory StorageAccountMicrosoftEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountMicrosoftEndpointsResponse(
      blob: pulumi.Input.fromValue(map['blob'] as String),
      dfs: pulumi.Input.fromValue(map['dfs'] as String),
      file: pulumi.Input.fromValue(map['file'] as String),
      queue: pulumi.Input.fromValue(map['queue'] as String),
      table: pulumi.Input.fromValue(map['table'] as String),
      web: pulumi.Input.fromValue(map['web'] as String),
    );
  }
}
