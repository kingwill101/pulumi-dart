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
  final List<GetWorkspaceCustomParameter> customParameters;
  /// An `enhancedSecurityCompliance` block as documented below.
  final List<GetWorkspaceEnhancedSecurityCompliance> enhancedSecurityCompliances;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location where the Databricks Workspace exists.
  final String location;
  /// A `managedDiskIdentity` block as documented below.
  final List<GetWorkspaceManagedDiskIdentity> managedDiskIdentities;
  final String name;
  final String resourceGroupName;
  /// SKU of this Databricks Workspace.
  final String sku;
  /// A `storageAccountIdentity` block as documented below.
  final List<GetWorkspaceStorageAccountIdentity> storageAccountIdentities;
  /// A mapping of tags to assign to the Databricks Workspace.
  final Map<String, String>? tags;
  /// Unique ID of this Databricks Workspace in Databricks management plane.
  final String workspaceId;
  /// URL this Databricks Workspace is accessible on.
  final String workspaceUrl;

  /// Creates a new [GetWorkspaceResult].
  /// [customParameters] A `customParameters` block as documented below.
  /// [enhancedSecurityCompliances] An `enhancedSecurityCompliance` block as documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Databricks Workspace exists.
  /// [managedDiskIdentities] A `managedDiskIdentity` block as documented below.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [sku] SKU of this Databricks Workspace.
  /// [storageAccountIdentities] A `storageAccountIdentity` block as documented below.
  /// [tags] A mapping of tags to assign to the Databricks Workspace.
  /// [workspaceId] Unique ID of this Databricks Workspace in Databricks management plane.
  /// [workspaceUrl] URL this Databricks Workspace is accessible on.
  const GetWorkspaceResult({
    required this.customParameters,
    required this.enhancedSecurityCompliances,
    required this.id,
    required this.location,
    required this.managedDiskIdentities,
    required this.name,
    required this.resourceGroupName,
    required this.sku,
    required this.storageAccountIdentities,
    this.tags,
    required this.workspaceId,
    required this.workspaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customParameters': pulumi.Input.encodeList<GetWorkspaceCustomParameter, Map<String, dynamic>>(customParameters, (value) => value.toMap()),
      'enhancedSecurityCompliances': pulumi.Input.encodeList<GetWorkspaceEnhancedSecurityCompliance, Map<String, dynamic>>(enhancedSecurityCompliances, (value) => value.toMap()),
      'id': id,
      'location': location,
      'managedDiskIdentities': pulumi.Input.encodeList<GetWorkspaceManagedDiskIdentity, Map<String, dynamic>>(managedDiskIdentities, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'storageAccountIdentities': pulumi.Input.encodeList<GetWorkspaceStorageAccountIdentity, Map<String, dynamic>>(storageAccountIdentities, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceId': workspaceId,
      'workspaceUrl': workspaceUrl,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      customParameters: pulumi.Input.decodeList<GetWorkspaceCustomParameter>(map['customParameters']!, (value) => GetWorkspaceCustomParameter.fromMap((value as Map).cast<String, dynamic>())),
      enhancedSecurityCompliances: pulumi.Input.decodeList<GetWorkspaceEnhancedSecurityCompliance>(map['enhancedSecurityCompliances']!, (value) => GetWorkspaceEnhancedSecurityCompliance.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      managedDiskIdentities: pulumi.Input.decodeList<GetWorkspaceManagedDiskIdentity>(map['managedDiskIdentities']!, (value) => GetWorkspaceManagedDiskIdentity.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      storageAccountIdentities: pulumi.Input.decodeList<GetWorkspaceStorageAccountIdentity>(map['storageAccountIdentities']!, (value) => GetWorkspaceStorageAccountIdentity.fromMap((value as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: map['workspaceId'] as String,
      workspaceUrl: map['workspaceUrl'] as String,
    );
  }
}
