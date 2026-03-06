// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_user_armresource_response.dart';

/// Result data returned by listStaticSiteUsers.
class ListStaticSiteUsersResult {
  /// Link to next page of resources.
  final String nextLink;
  /// Collection of resources.
  final List<StaticSiteUserARMResourceResponse> value;

  /// Creates a new [ListStaticSiteUsersResult].
  /// [nextLink] Link to next page of resources.
  /// [value] Collection of resources.
  const ListStaticSiteUsersResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<StaticSiteUserARMResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListStaticSiteUsersResult.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteUsersResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<StaticSiteUserARMResourceResponse>(map['value']!, (value) => StaticSiteUserARMResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

