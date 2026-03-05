// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_response.dart';

/// Result data returned by listSourceControlRepositories.
class ListSourceControlRepositoriesResult {
  /// URL to fetch the next set of repositories.
  final String nextLink;
  /// Array of repositories.
  final List<RepoResponse> value;

  /// Creates a new [ListSourceControlRepositoriesResult].
  /// [nextLink] URL to fetch the next set of repositories.
  /// [value] Array of repositories.
  ListSourceControlRepositoriesResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<RepoResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListSourceControlRepositoriesResult.fromMap(Map<String, dynamic> map) {
    return ListSourceControlRepositoriesResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<RepoResponse>(map['value']!, (value) => RepoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

