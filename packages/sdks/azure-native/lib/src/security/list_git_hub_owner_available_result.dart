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
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<GitHubOwnerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListGitHubOwnerAvailableResult.fromMap(Map<String, dynamic> map) {
    return ListGitHubOwnerAvailableResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GitHubOwnerResponse>(guardedValue, (value) => GitHubOwnerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

