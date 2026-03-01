// ignore_for_file: unused_element, unnecessary_cast


/// The URIs that are used to perform a retrieval of a public blob, queue, table, web or dfs object via a microsoft routing endpoint.
class StorageAccountMicrosoftEndpointsResponse {
  /// Gets the blob endpoint.
  final String blob;
  /// Gets the dfs endpoint.
  final String dfs;
  /// Gets the file endpoint.
  final String file;
  /// Gets the queue endpoint.
  final String queue;
  /// Gets the table endpoint.
  final String table;
  /// Gets the web endpoint.
  final String web;

  /// Creates a new [StorageAccountMicrosoftEndpointsResponse].
  /// [blob] Gets the blob endpoint.
  /// [dfs] Gets the dfs endpoint.
  /// [file] Gets the file endpoint.
  /// [queue] Gets the queue endpoint.
  /// [table] Gets the table endpoint.
  /// [web] Gets the web endpoint.
  StorageAccountMicrosoftEndpointsResponse({
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
      blob: map['blob'] as String,
      dfs: map['dfs'] as String,
      file: map['file'] as String,
      queue: map['queue'] as String,
      table: map['table'] as String,
      web: map['web'] as String,
    );
  }
}

