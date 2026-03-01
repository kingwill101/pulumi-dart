// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_owner_response.dart';

/// Result data returned by listGitHubOwnerAvailable.
class ListGitHubOwnerAvailableResult {
  /// Gets or sets next link to scroll over the results.
  final String? nextLink;
  /// Gets or sets list of resources.
  final List<GitHubOwnerResponse>? value;

  /// Creates a new [ListGitHubOwnerAvailableResult].
  /// [nextLink] Gets or sets next link to scroll over the results.
  /// [value] Gets or sets list of resources.
  ListGitHubOwnerAvailableResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<GitHubOwnerResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListGitHubOwnerAvailableResult.fromMap(Map<String, dynamic> map) {
    return ListGitHubOwnerAvailableResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<GitHubOwnerResponse>(map['value'], (value) => GitHubOwnerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

