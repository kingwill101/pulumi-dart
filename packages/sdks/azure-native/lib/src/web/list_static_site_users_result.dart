// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_user_armresource_response.dart';

/// Result data returned by listStaticSiteUsers.
class ListStaticSiteUsersResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The StaticSiteUserARMResource items on this page
  final List<StaticSiteUserARMResourceResponse>? value;

  /// Creates a new [ListStaticSiteUsersResult].
  /// [nextLink] The link to the next page of items
  /// [value] The StaticSiteUserARMResource items on this page
  const ListStaticSiteUsersResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<StaticSiteUserARMResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListStaticSiteUsersResult.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteUsersResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StaticSiteUserARMResourceResponse>(guardedValue, (value) => StaticSiteUserARMResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
