// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters {
  /// The filter used to request specific records from IdP. In case of attributes type as AZURE_AD_GROUPS_ID, it represents the
  /// filter used to request specific groups for users from IdP. By default, all of the groups associated with the user are fetched. The
  /// groups should be security enabled. See https://learn.microsoft.com/en-us/graph/search-query-parameter for more details.
  final pulumi.Input<String>? filter;

  /// Creates a new [WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters].
  /// [filter] The filter used to request specific records from IdP. In case of attributes type as AZURE_AD_GROUPS_ID, it represents the
  WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters({
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
    };
  }

  factory WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters(
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
    );
  }
}

