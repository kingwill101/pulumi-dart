// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_get_authorized_orgs_desc_args_doc}
/// Arguments for getAuthorizedOrgsDesc.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_get_authorized_orgs_desc_args_doc}
class GetAuthorizedOrgsDescArgs {
  final pulumi.Input<String> accessPolicyId;
  final pulumi.Input<String> authorizedOrgsDescId;

  /// Creates a new [GetAuthorizedOrgsDescArgs].
  /// [accessPolicyId] Required.
  /// [authorizedOrgsDescId] Required.
  GetAuthorizedOrgsDescArgs({
    required this.accessPolicyId,
    required this.authorizedOrgsDescId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'authorizedOrgsDescId': authorizedOrgsDescId,
    };
  }

  factory GetAuthorizedOrgsDescArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedOrgsDescArgs(
      accessPolicyId: pulumi.Input.fromValue(map['accessPolicyId'] as String),
      authorizedOrgsDescId: pulumi.Input.fromValue(
        map['authorizedOrgsDescId'] as String,
      ),
    );
  }
}
