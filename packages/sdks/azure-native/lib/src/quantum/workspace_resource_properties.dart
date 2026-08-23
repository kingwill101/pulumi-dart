// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider.dart';

/// Properties of a Workspace
class WorkspaceResourceProperties {
  /// Indicator of enablement of the Quantum workspace Api keys.
  final pulumi.Input<bool>? apiKeyEnabled;
  /// List of Providers selected for this Workspace
  final pulumi.Input<List<Provider>>? providers;
  /// ARM Resource Id of the storage account associated with this workspace.
  final pulumi.Input<String>? storageAccount;

  /// Creates a new [WorkspaceResourceProperties].
  /// [apiKeyEnabled] Indicator of enablement of the Quantum workspace Api keys.
  /// [providers] List of Providers selected for this Workspace
  /// [storageAccount] ARM Resource Id of the storage account associated with this workspace.
  const WorkspaceResourceProperties({
    this.apiKeyEnabled,
    this.providers,
    this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyEnabled': ?apiKeyEnabled,
      'providers': ?pulumi.Input.mapOptionalInputValue<List<Provider>, List<Map<String, dynamic>>>(providers, (value) => pulumi.Input.encodeList<Provider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccount': ?storageAccount,
    };
  }

  factory WorkspaceResourceProperties.fromMap(Map<String, dynamic> map) {
    return WorkspaceResourceProperties(
      apiKeyEnabled: (() { final guardedValue = map['apiKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Provider>(guardedValue, (value) => Provider.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageAccount: (() { final guardedValue = map['storageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
