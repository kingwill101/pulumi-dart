// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_response.dart';

/// Properties of a Workspace
class WorkspaceResourcePropertiesResponse {
  /// Indicator of enablement of the Quantum workspace Api keys.
  final pulumi.Input<bool>? apiKeyEnabled;
  /// The URI of the workspace endpoint.
  final pulumi.Input<String> endpointUri;
  /// List of Providers selected for this Workspace
  final pulumi.Input<List<ProviderResponse>>? providers;
  /// Provisioning status field
  final pulumi.Input<String> provisioningState;
  /// ARM Resource Id of the storage account associated with this workspace.
  final pulumi.Input<String>? storageAccount;
  /// Whether the current workspace is ready to accept Jobs.
  final pulumi.Input<String> usable;

  /// Creates a new [WorkspaceResourcePropertiesResponse].
  /// [apiKeyEnabled] Indicator of enablement of the Quantum workspace Api keys.
  /// [endpointUri] The URI of the workspace endpoint.
  /// [providers] List of Providers selected for this Workspace
  /// [provisioningState] Provisioning status field
  /// [storageAccount] ARM Resource Id of the storage account associated with this workspace.
  /// [usable] Whether the current workspace is ready to accept Jobs.
  const WorkspaceResourcePropertiesResponse({
    this.apiKeyEnabled,
    required this.endpointUri,
    this.providers,
    required this.provisioningState,
    this.storageAccount,
    required this.usable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyEnabled': ?apiKeyEnabled,
      'endpointUri': endpointUri,
      'providers': ?pulumi.Input.mapOptionalInputValue<List<ProviderResponse>, List<Map<String, dynamic>>>(providers, (value) => pulumi.Input.encodeList<ProviderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'storageAccount': ?storageAccount,
      'usable': usable,
    };
  }

  factory WorkspaceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceResourcePropertiesResponse(
      apiKeyEnabled: (() { final guardedValue = map['apiKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProviderResponse>(guardedValue, (value) => ProviderResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      storageAccount: (() { final guardedValue = map['storageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usable: pulumi.Input.fromValue(map['usable'] as String),
    );
  }
}
