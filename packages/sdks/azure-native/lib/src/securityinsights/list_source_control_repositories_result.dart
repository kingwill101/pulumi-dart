// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_response.dart';

/// Result data returned by listSourceControlRepositories.
class ListSourceControlRepositoriesResult {
  /// The link to the next page of items
  final String nextLink;
  /// The Repo items on this page
  final List<RepoResponse> value;

  /// Creates a new [ListSourceControlRepositoriesResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Repo items on this page
  const ListSourceControlRepositoriesResult({
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
