// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicePrincipalDelegatedPermissionGrant resources.
class ServicePrincipalDelegatedPermissionGrantState {
  /// A set of claim values for delegated permission scopes which should be included in access tokens for the resource.
  final pulumi.Input<List<String>>? claimValues;
  /// The object ID of the service principal representing the resource to be accessed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceServicePrincipalObjectId;
  /// The object ID of the service principal for which this delegated permission grant should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? servicePrincipalObjectId;
  /// The object ID of the user on behalf of whom the service principal is authorized to access the resource. When omitted, the delegated permission grant will be consented for all users. Changing this forces a new resource to be created.
  ///
  /// &gt; **Granting Admin Consent** To grant admin consent for the service principal to impersonate all users, just omit the `user_object_id` property.
  final pulumi.Input<String>? userObjectId;

  /// Creates a new [ServicePrincipalDelegatedPermissionGrantState].
  /// [claimValues] A set of claim values for delegated permission scopes which should be included in access tokens for the resource.
  /// [resourceServicePrincipalObjectId] The object ID of the service principal representing the resource to be accessed. Changing this forces a new resource to be created.
  /// [servicePrincipalObjectId] The object ID of the service principal for which this delegated permission grant should be created. Changing this forces a new resource to be created.
  /// [userObjectId] The object ID of the user on behalf of whom the service principal is authorized to access the resource. When omitted, the delegated permission grant will be consented for all users. Changing this forces a new resource to be created.
  const ServicePrincipalDelegatedPermissionGrantState({
    this.claimValues,
    this.resourceServicePrincipalObjectId,
    this.servicePrincipalObjectId,
    this.userObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimValues': ?claimValues,
      'resourceServicePrincipalObjectId': ?resourceServicePrincipalObjectId,
      'servicePrincipalObjectId': ?servicePrincipalObjectId,
      'userObjectId': ?userObjectId,
    };
  }

  factory ServicePrincipalDelegatedPermissionGrantState.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalDelegatedPermissionGrantState(
      claimValues: (() { final guardedValue = map['claimValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceServicePrincipalObjectId: (() { final guardedValue = map['resourceServicePrincipalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalObjectId: (() { final guardedValue = map['servicePrincipalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userObjectId: (() { final guardedValue = map['userObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

