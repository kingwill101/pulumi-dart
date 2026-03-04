// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_saas_list_saas_resource_access_token_args_doc}
/// Arguments for listSaasResourceAccessToken.
/// {@endtemplate}
/// {@macro pulumi_saas_list_saas_resource_access_token_args_doc}
class ListSaasResourceAccessTokenArgs {
  /// The Saas resource ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)
  final pulumi.Input<String> resourceId;

  /// Creates a new [ListSaasResourceAccessTokenArgs].
  /// [resourceId] The Saas resource ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)
  ListSaasResourceAccessTokenArgs({required this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceId': resourceId};
  }

  factory ListSaasResourceAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return ListSaasResourceAccessTokenArgs(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
