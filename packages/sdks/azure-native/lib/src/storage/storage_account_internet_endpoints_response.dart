// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The URIs that are used to perform a retrieval of a public blob, file, web or dfs object via a internet routing endpoint.
class StorageAccountInternetEndpointsResponse {
  /// Gets the blob endpoint.
  final pulumi.Input<String> blob;
  /// Gets the dfs endpoint.
  final pulumi.Input<String> dfs;
  /// Gets the file endpoint.
  final pulumi.Input<String> file;
  /// Gets the web endpoint.
  final pulumi.Input<String> web;

  /// Creates a new [StorageAccountInternetEndpointsResponse].
  /// [blob] Gets the blob endpoint.
  /// [dfs] Gets the dfs endpoint.
  /// [file] Gets the file endpoint.
  /// [web] Gets the web endpoint.
  StorageAccountInternetEndpointsResponse({
    required this.blob,
    required this.dfs,
    required this.file,
    required this.web,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': blob,
      'dfs': dfs,
      'file': file,
      'web': web,
    };
  }

  factory StorageAccountInternetEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountInternetEndpointsResponse(
      blob: (map['blob'] as String).input(),
      dfs: (map['dfs'] as String).input(),
      file: (map['file'] as String).input(),
      web: (map['web'] as String).input(),
    );
  }
}

