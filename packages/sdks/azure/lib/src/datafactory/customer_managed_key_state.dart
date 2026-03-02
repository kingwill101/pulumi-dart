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
    this.customerManagedKeyId,
    this.dataFactoryId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyId': ?customerManagedKeyId,
      'dataFactoryId': ?dataFactoryId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory CustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyState(
      customerManagedKeyId: map['customerManagedKeyId'] == null ? null : (map['customerManagedKeyId'] as String).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : (map['userAssignedIdentityId'] as String).input(),
    );
  }
}

