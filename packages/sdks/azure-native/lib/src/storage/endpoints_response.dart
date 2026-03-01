// ignore_for_file: unused_element, unnecessary_cast

import 'storage_account_internet_endpoints_response.dart';
import 'storage_account_microsoft_endpoints_response.dart';

/// The URIs that are used to perform a retrieval of a public blob, queue, table, web or dfs object.
class EndpointsResponse {
  /// Gets the blob endpoint.
  final String blob;
  /// Gets the dfs endpoint.
  final String dfs;
  /// Gets the file endpoint.
  final String file;
  /// Gets the internet routing storage endpoints
  final StorageAccountInternetEndpointsResponse? internetEndpoints;
  /// Gets the microsoft routing storage endpoints.
  final StorageAccountMicrosoftEndpointsResponse? microsoftEndpoints;
  /// Gets the queue endpoint.
  final String queue;
  /// Gets the table endpoint.
  final String table;
  /// Gets the web endpoint.
  final String web;

  /// Creates a new [EndpointsResponse].
  /// [blob] Gets the blob endpoint.
  /// [dfs] Gets the dfs endpoint.
  /// [file] Gets the file endpoint.
  /// [internetEndpoints] Gets the internet routing storage endpoints
  /// [microsoftEndpoints] Gets the microsoft routing storage endpoints.
  /// [queue] Gets the queue endpoint.
  /// [table] Gets the table endpoint.
  /// [web] Gets the web endpoint.
  EndpointsResponse({
    required this.blob,
    required this.dfs,
    required this.file,
    this.internetEndpoints,
    this.microsoftEndpoints,
    required this.queue,
    required this.table,
    required this.web,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': blob,
      'dfs': dfs,
      'file': file,
      'internetEndpoints': ?internetEndpoints == null ? null : internetEndpoints!.toMap(),
      'microsoftEndpoints': ?microsoftEndpoints == null ? null : microsoftEndpoints!.toMap(),
      'queue': queue,
      'table': table,
      'web': web,
    };
  }

  factory EndpointsResponse.fromMap(Map<String, dynamic> map) {
    return EndpointsResponse(
      blob: map['blob'] as String,
      dfs: map['dfs'] as String,
      file: map['file'] as String,
      internetEndpoints: map['internetEndpoints'] == null ? null : StorageAccountInternetEndpointsResponse.fromMap((map['internetEndpoints'] as Map).cast<String, dynamic>()),
      microsoftEndpoints: map['microsoftEndpoints'] == null ? null : StorageAccountMicrosoftEndpointsResponse.fromMap((map['microsoftEndpoints'] as Map).cast<String, dynamic>()),
      queue: map['queue'] as String,
      table: map['table'] as String,
      web: map['web'] as String,
    );
  }
}

