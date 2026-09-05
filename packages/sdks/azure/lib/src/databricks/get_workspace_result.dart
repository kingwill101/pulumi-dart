// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_custom_parameter.dart';
import 'get_workspace_enhanced_security_compliance.dart';
import 'get_workspace_managed_disk_identity.dart';
import 'get_workspace_storage_account_identity.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// A `customParameters` block as documented below.
  /// *
  final List<GetWorkspaceCustomParameter>? customParameters;
  /// An `enhancedSecurityCompliance` block as documented below.
  final List<GetWorkspaceEnhancedSecurityCompliance>? enhancedSecurityCompliances;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location where the Databricks Workspace exists.
  final String? location;
  /// A `managedDiskIdentity` block as documented below.
  final List<GetWorkspaceManagedDiskIdentity>? managedDiskIdentities;
  final String? name;
  final String? resourceGroupName;
  /// SKU of this Databricks Workspace.
  final String? sku;
  /// A `storageAccountIdentity` block as documented below.
  final List<GetWorkspaceStorageAccountIdentity>? storageAccountIdentities;
  /// A mapping of tags to assign to the Databricks Workspace.
  final Map<String, String>? tags;
  /// Unique ID of this Databricks Workspace in Databricks management plane.
  final String? workspaceId;
  /// URL this Databricks Workspace is accessible on.
  final String? workspaceUrl;

  /// Creates a new [GetWorkspaceResult].
  /// [customParameters] A `customParameters` block as documented below.
  /// [enhancedSecurityCompliances] An `enhancedSecurityCompliance` block as documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Databricks Workspace exists.
  /// [managedDiskIdentities] A `managedDiskIdentity` block as documented below.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [sku] SKU of this Databricks Workspace.
  /// [storageAccountIdentities] A `storageAccountIdentity` block as documented below.
  /// [tags] A mapping of tags to assign to the Databricks Workspace.
  /// [workspaceId] Unique ID of this Databricks Workspace in Databricks management plane.
  /// [workspaceUrl] URL this Databricks Workspace is accessible on.
  const GetWorkspaceResult({
    this.customParameters,
    this.enhancedSecurityCompliances,
    this.id,
    this.location,
    this.managedDiskIdentities,
    this.name,
    this.resourceGroupName,
    this.sku,
    this.storageAccountIdentities,
    this.tags,
    this.workspaceId,
    this.workspaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customParameters': ?(() { final guardedValue = customParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspaceCustomParameter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enhancedSecurityCompliances': ?(() { final guardedValue = enhancedSecurityCompliances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspaceEnhancedSecurityCompliance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'managedDiskIdentities': ?(() { final guardedValue = managedDiskIdentities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspaceManagedDiskIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'storageAccountIdentities': ?(() { final guardedValue = storageAccountIdentities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspaceStorageAccountIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'workspaceId': ?workspaceId,
      'workspaceUrl': ?workspaceUrl,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      customParameters: (() { final guardedValue = map['customParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspaceCustomParameter>(guardedValue, (value) => GetWorkspaceCustomParameter.fromMap((value as Map).cast<String, dynamic>())); })(),
      enhancedSecurityCompliances: (() { final guardedValue = map['enhancedSecurityCompliances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspaceEnhancedSecurityCompliance>(guardedValue, (value) => GetWorkspaceEnhancedSecurityCompliance.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedDiskIdentities: (() { final guardedValue = map['managedDiskIdentities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspaceManagedDiskIdentity>(guardedValue, (value) => GetWorkspaceManagedDiskIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountIdentities: (() { final guardedValue = map['storageAccountIdentities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspaceStorageAccountIdentity>(guardedValue, (value) => GetWorkspaceStorageAccountIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceUrl: (() { final guardedValue = map['workspaceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
