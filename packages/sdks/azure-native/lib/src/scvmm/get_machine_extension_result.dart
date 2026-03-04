// ignore_for_file: unused_element, unnecessary_cast

import 'machine_extension_properties_response_instance_view.dart';
import 'system_data_response.dart';

/// Result data returned by getMachineExtension.
class GetMachineExtensionResult {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final bool? enableAutomaticUpgrade;

  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The machine extension instance view.
  final MachineExtensionPropertiesResponseInstanceView? instanceView;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final dynamic protectedSettings;

  /// The provisioning state, which only appears in the response.
  final String provisioningState;

  /// The name of the extension handler publisher.
  final String? publisher;

  /// Json formatted public settings for the extension.
  final dynamic settings;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [GetMachineExtensionResult].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The machine extension instance view.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [typeHandlerVersion] Specifies the version of the script handler.
  GetMachineExtensionResult({
    this.autoUpgradeMinorVersion,
    required this.azureApiVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    required this.id,
    this.instanceView,
    required this.location,
    required this.name,
    this.protectedSettings,
    required this.provisioningState,
    this.publisher,
    this.settings,
    required this.systemData,
    this.tags,
    required this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'azureApiVersion': azureApiVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'instanceView': ?instanceView?.toMap(),
      'location': location,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory GetMachineExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetMachineExtensionResult(
      autoUpgradeMinorVersion: (() {
        final guardedValue = map['autoUpgradeMinorVersion'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      enableAutomaticUpgrade: (() {
        final guardedValue = map['enableAutomaticUpgrade'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      forceUpdateTag: (() {
        final guardedValue = map['forceUpdateTag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      instanceView: (() {
        final guardedValue = map['instanceView'];
        if (guardedValue == null) return null;
        return MachineExtensionPropertiesResponseInstanceView.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      protectedSettings: (() {
        final guardedValue = map['protectedSettings'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      provisioningState: map['provisioningState'] as String,
      publisher: (() {
        final guardedValue = map['publisher'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      typeHandlerVersion: (() {
        final guardedValue = map['typeHandlerVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
