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
  /// > **Granting Admin Consent** To grant admin consent for the service principal to impersonate all users, just omit the `user_object_id` property.
  final pulumi.Input<String>? userObjectId;

  /// Creates a new [ServicePrincipalDelegatedPermissionGrantArgs].
  /// [claimValues] A set of claim values for delegated permission scopes which should be included in access tokens for the resource.
  /// [resourceServicePrincipalObjectId] The object ID of the service principal representing the resource to be accessed. Changing this forces a new resource to be created.
  /// [servicePrincipalObjectId] The object ID of the service principal for which this delegated permission grant should be created. Changing this forces a new resource to be created.
  /// [userObjectId] The object ID of the user on behalf of whom the service principal is authorized to access the resource. When omitted, the delegated permission grant will be consented for all users. Changing this forces a new resource to be created.
  ServicePrincipalDelegatedPermissionGrantArgs({
    required pulumi.Output<List<String>> claimValues,
    required pulumi.Output<String> resourceServicePrincipalObjectId,
    required pulumi.Output<String> servicePrincipalObjectId,
    pulumi.Output<String>? userObjectId,
  }) :
      claimValues = pulumi.Input.asInput<List<String>>(claimValues),
      resourceServicePrincipalObjectId = pulumi.Input.asInput<String>(resourceServicePrincipalObjectId),
      servicePrincipalObjectId = pulumi.Input.asInput<String>(servicePrincipalObjectId),
      userObjectId = pulumi.Input.asOptionalInput<String>(userObjectId);

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
      claimValues: pulumi.Output.create<List<String>>((map['claimValues'] as List).cast<String>()),
      resourceServicePrincipalObjectId: pulumi.Output.create<String>(map['resourceServicePrincipalObjectId'] as String),
      servicePrincipalObjectId: pulumi.Output.create<String>(map['servicePrincipalObjectId'] as String),
      userObjectId: map['userObjectId'] == null ? null : pulumi.Output.create<String>(map['userObjectId'] as String),
    );
  }
}

