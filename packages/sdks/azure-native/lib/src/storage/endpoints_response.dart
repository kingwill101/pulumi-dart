// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_internet_endpoints_response.dart';
import 'storage_account_microsoft_endpoints_response.dart';

/// The URIs that are used to perform a retrieval of a public blob, queue, table, web or dfs object.
class EndpointsResponse {
  /// Gets the blob endpoint.
  final pulumi.Input<String> blob;
  /// Gets the dfs endpoint.
  final pulumi.Input<String> dfs;
  /// Gets the file endpoint.
  final pulumi.Input<String> file;
  /// Gets the internet routing storage endpoints
  final pulumi.Input<StorageAccountInternetEndpointsResponse>? internetEndpoints;
  /// Gets the microsoft routing storage endpoints.
  final pulumi.Input<StorageAccountMicrosoftEndpointsResponse>? microsoftEndpoints;
  /// Gets the queue endpoint.
  final pulumi.Input<String> queue;
  /// Gets the table endpoint.
  final pulumi.Input<String> table;
  /// Gets the web endpoint.
  final pulumi.Input<String> web;

  /// Creates a new [EndpointsResponse].
  /// [blob] Gets the blob endpoint.
  /// [dfs] Gets the dfs endpoint.
  /// [file] Gets the file endpoint.
  /// [internetEndpoints] Gets the internet routing storage endpoints
  /// [microsoftEndpoints] Gets the microsoft routing storage endpoints.
  /// [queue] Gets the queue endpoint.
  /// [table] Gets the table endpoint.
  /// [web] Gets the web endpoint.
  const EndpointsResponse({
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
      'internetEndpoints': ?pulumi.Input.mapOptionalInputValue<StorageAccountInternetEndpointsResponse, Map<String, dynamic>>(internetEndpoints, (value) => value.toMap()),
      'microsoftEndpoints': ?pulumi.Input.mapOptionalInputValue<StorageAccountMicrosoftEndpointsResponse, Map<String, dynamic>>(microsoftEndpoints, (value) => value.toMap()),
      'queue': queue,
      'table': table,
      'web': web,
    };
  }

  factory EndpointsResponse.fromMap(Map<String, dynamic> map) {
    return EndpointsResponse(
      blob: pulumi.Input.fromValue(map['blob'] as String),
      dfs: pulumi.Input.fromValue(map['dfs'] as String),
      file: pulumi.Input.fromValue(map['file'] as String),
      internetEndpoints: (() { final guardedValue = map['internetEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageAccountInternetEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftEndpoints: (() { final guardedValue = map['microsoftEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageAccountMicrosoftEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queue: pulumi.Input.fromValue(map['queue'] as String),
      table: pulumi.Input.fromValue(map['table'] as String),
      web: pulumi.Input.fromValue(map['web'] as String),
    );
  }
}
