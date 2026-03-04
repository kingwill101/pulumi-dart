// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_authorization_managed_by_authorization.dart';
import 'third_party_extension.dart';

class ResourceProviderAuthorization {
  /// The allowed third party extensions.
  final pulumi.Input<List<ThirdPartyExtension>>? allowedThirdPartyExtensions;

  /// The application id.
  final pulumi.Input<String>? applicationId;

  /// The grouping tag.
  final pulumi.Input<String>? groupingTag;

  /// Managed by authorization.
  final pulumi.Input<ResourceProviderAuthorizationManagedByAuthorization>?
  managedByAuthorization;

  /// The managed by role definition id.
  final pulumi.Input<String>? managedByRoleDefinitionId;

  /// The role definition id.
  final pulumi.Input<String>? roleDefinitionId;

  /// Creates a new [ResourceProviderAuthorization].
  /// [allowedThirdPartyExtensions] The allowed third party extensions.
  /// [applicationId] The application id.
  /// [groupingTag] The grouping tag.
  /// [managedByAuthorization] Managed by authorization.
  /// [managedByRoleDefinitionId] The managed by role definition id.
  /// [roleDefinitionId] The role definition id.
  ResourceProviderAuthorization({
    this.allowedThirdPartyExtensions,
    this.applicationId,
    this.groupingTag,
    this.managedByAuthorization,
    this.managedByRoleDefinitionId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedThirdPartyExtensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ThirdPartyExtension>,
            List<Map<String, dynamic>>
          >(
            allowedThirdPartyExtensions,
            (value) =>
                pulumi.Input.encodeList<
                  ThirdPartyExtension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'applicationId': ?applicationId,
      'groupingTag': ?groupingTag,
      'managedByAuthorization':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderAuthorizationManagedByAuthorization,
            Map<String, dynamic>
          >(managedByAuthorization, (value) => value.toMap()),
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ResourceProviderAuthorization.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorization(
      allowedThirdPartyExtensions: (() {
        final guardedValue = map['allowedThirdPartyExtensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ThirdPartyExtension>(
            guardedValue,
            (value) => ThirdPartyExtension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      applicationId: (() {
        final guardedValue = map['applicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupingTag: (() {
        final guardedValue = map['groupingTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedByAuthorization: (() {
        final guardedValue = map['managedByAuthorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderAuthorizationManagedByAuthorization.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managedByRoleDefinitionId: (() {
        final guardedValue = map['managedByRoleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleDefinitionId: (() {
        final guardedValue = map['roleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
