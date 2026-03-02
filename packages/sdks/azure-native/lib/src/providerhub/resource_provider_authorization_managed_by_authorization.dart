// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_authorization.dart';

/// Managed by authorization.
class ResourceProviderAuthorizationManagedByAuthorization {
  final pulumi.Input<List<AdditionalAuthorization>>? additionalAuthorizations;
  /// Indicates whether the managed by resource role definition ID should be inherited.
  final pulumi.Input<bool>? allowManagedByInheritance;
  /// The managed by resource role definition ID for the application.
  final pulumi.Input<String>? managedByResourceRoleDefinitionId;

  /// Creates a new [ResourceProviderAuthorizationManagedByAuthorization].
  /// [additionalAuthorizations] Optional.
  /// [allowManagedByInheritance] Indicates whether the managed by resource role definition ID should be inherited.
  /// [managedByResourceRoleDefinitionId] The managed by resource role definition ID for the application.
  ResourceProviderAuthorizationManagedByAuthorization({
    this.additionalAuthorizations,
    this.allowManagedByInheritance,
    this.managedByResourceRoleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<AdditionalAuthorization>, List<Map<String, dynamic>>>(additionalAuthorizations, (value) => pulumi.Input.encodeList<AdditionalAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowManagedByInheritance': ?allowManagedByInheritance,
      'managedByResourceRoleDefinitionId': ?managedByResourceRoleDefinitionId,
    };
  }

  factory ResourceProviderAuthorizationManagedByAuthorization.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationManagedByAuthorization(
      additionalAuthorizations: map['additionalAuthorizations'] == null ? null : (pulumi.Input.decodeList<AdditionalAuthorization>(map['additionalAuthorizations']!, (value) => AdditionalAuthorization.fromMap((value as Map).cast<String, dynamic>()))).input(),
      allowManagedByInheritance: map['allowManagedByInheritance'] == null ? null : (map['allowManagedByInheritance']! as bool).input(),
      managedByResourceRoleDefinitionId: map['managedByResourceRoleDefinitionId'] == null ? null : (map['managedByResourceRoleDefinitionId']! as String).input(),
    );
  }
}

