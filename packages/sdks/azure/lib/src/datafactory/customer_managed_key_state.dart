// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomerManagedKey resources.
class CustomerManagedKeyState {
  /// The ID the of the Customer Managed Key to associate with the Data Factory.
  final pulumi.Input<String>? customerManagedKeyId;
  /// The ID of the Data Factory Resource the Customer Managed Key will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataFactoryId;
  /// The User Assigned Identity ID that will be used to access Key Vaults that contain the encryption keys.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [CustomerManagedKeyState].
  /// [customerManagedKeyId] The ID the of the Customer Managed Key to associate with the Data Factory.
  /// [dataFactoryId] The ID of the Data Factory Resource the Customer Managed Key will be associated with. Changing this forces a new resource to be created.
  /// [userAssignedIdentityId] The User Assigned Identity ID that will be used to access Key Vaults that contain the encryption keys.
  CustomerManagedKeyState({
    pulumi.Output<String>? customerManagedKeyId,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? userAssignedIdentityId,
  }) :
      customerManagedKeyId = pulumi.Input.asOptionalInput<String>(customerManagedKeyId),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      userAssignedIdentityId = pulumi.Input.asOptionalInput<String>(userAssignedIdentityId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyId': ?customerManagedKeyId,
      'dataFactoryId': ?dataFactoryId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory CustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyState(
      customerManagedKeyId: map['customerManagedKeyId'] == null ? null : pulumi.Output.create<String>(map['customerManagedKeyId'] as String),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['userAssignedIdentityId'] as String),
    );
  }
}

