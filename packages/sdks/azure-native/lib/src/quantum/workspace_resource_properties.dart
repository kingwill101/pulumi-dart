// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider.dart';

/// Properties of a Workspace
class WorkspaceResourceProperties {
  /// Indicator of enablement of the Quantum workspace Api keys.
  final bool? apiKeyEnabled;
  /// List of Providers selected for this Workspace
  final List<Provider>? providers;
  /// ARM Resource Id of the storage account associated with this workspace.
  final String? storageAccount;

  /// Creates a new [WorkspaceResourceProperties].
  /// [apiKeyEnabled] Indicator of enablement of the Quantum workspace Api keys.
  /// [providers] List of Providers selected for this Workspace
  /// [storageAccount] ARM Resource Id of the storage account associated with this workspace.
  WorkspaceResourceProperties({
    this.apiKeyEnabled,
    this.providers,
    this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyEnabled': ?apiKeyEnabled,
      'providers': ?providers == null ? null : pulumi.Input.encodeList<Provider, Map<String, dynamic>>(providers!, (value) => value.toMap()),
      'storageAccount': ?storageAccount,
    };
  }

  factory WorkspaceResourceProperties.fromMap(Map<String, dynamic> map) {
    return WorkspaceResourceProperties(
      apiKeyEnabled: map['apiKeyEnabled'] == null ? null : map['apiKeyEnabled'] as bool,
      providers: map['providers'] == null ? null : pulumi.Input.decodeList<Provider>(map['providers'], (value) => Provider.fromMap((value as Map).cast<String, dynamic>())),
      storageAccount: map['storageAccount'] == null ? null : map['storageAccount'] as String,
    );
  }
}

