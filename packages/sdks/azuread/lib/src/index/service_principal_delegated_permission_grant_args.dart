// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_service_principal_delegated_permission_grant_service_principal_delegated_permission_grant_args_doc}
/// The set of arguments for ServicePrincipalDelegatedPermissionGrant.
/// {@endtemplate}
/// {@macro pulumi_index_service_principal_delegated_permission_grant_service_principal_delegated_permission_grant_args_doc}
class ServicePrincipalDelegatedPermissionGrantArgs {
  /// A set of claim values for delegated permission scopes which should be included in access tokens for the resource.
  final pulumi.Input<List<String>> claimValues;
  /// The object ID of the service principal representing the resource to be accessed. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceServicePrincipalObjectId;
  /// The object ID of the service principal for which this delegated permission grant should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> servicePrincipalObjectId;
  /// The object ID of the user on behalf of whom the service principal is authorized to access the resource. When omitted, the delegated permission grant will be consented for all users. Changing this forces a new resource to be created.
  ///
  /// &gt; **Granting Admin Consent** To grant admin consent for the service principal to impersonate all users, just omit the `userObjectId` property.
  final pulumi.Input<String>? userObjectId;

  /// Creates a new [ServicePrincipalDelegatedPermissionGrantArgs].
  /// [claimValues] A set of claim values for delegated permission scopes which should be included in access tokens for the resource.
  /// [resourceServicePrincipalObjectId] The object ID of the service principal representing the resource to be accessed. Changing this forces a new resource to be created.
  /// [servicePrincipalObjectId] The object ID of the service principal for which this delegated permission grant should be created. Changing this forces a new resource to be created.
  /// [userObjectId] The object ID of the user on behalf of whom the service principal is authorized to access the resource. When omitted, the delegated permission grant will be consented for all users. Changing this forces a new resource to be created.
  const ServicePrincipalDelegatedPermissionGrantArgs({
    required this.claimValues,
    required this.resourceServicePrincipalObjectId,
    required this.servicePrincipalObjectId,
    this.userObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimValues': claimValues,
      'resourceServicePrincipalObjectId': resourceServicePrincipalObjectId,
      'servicePrincipalObjectId': servicePrincipalObjectId,
      'userObjectId': ?userObjectId,
    };
  }

  factory ServicePrincipalDelegatedPermissionGrantArgs.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalDelegatedPermissionGrantArgs(
      claimValues: pulumi.Input.fromValue((map['claimValues'] as List).cast<String>()),
      resourceServicePrincipalObjectId: pulumi.Input.fromValue(map['resourceServicePrincipalObjectId'] as String),
      servicePrincipalObjectId: pulumi.Input.fromValue(map['servicePrincipalObjectId'] as String),
      userObjectId: (() { final guardedValue = map['userObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
