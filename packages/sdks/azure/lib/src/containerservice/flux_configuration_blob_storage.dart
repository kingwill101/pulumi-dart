// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flux_configuration_blob_storage_managed_identity.dart';
import 'flux_configuration_blob_storage_service_principal.dart';

class FluxConfigurationBlobStorage {
  /// Specifies the account key (shared key) to access the storage account.
  final pulumi.Input<String>? accountKey;
  /// Specifies the Azure Blob container ID.
  final pulumi.Input<String> containerId;
  /// Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final pulumi.Input<String>? localAuthReference;
  /// A `managed_identity` block as defined below.
  final pulumi.Input<FluxConfigurationBlobStorageManagedIdentity>? managedIdentity;
  /// Specifies the shared access token to access the storage container.
  final pulumi.Input<String>? sasToken;
  /// A `service_principal` block as defined below.
  final pulumi.Input<FluxConfigurationBlobStorageServicePrincipal>? servicePrincipal;
  /// Specifies the interval at which to re-reconcile the cluster Azure Blob source with the remote.
  final pulumi.Input<int>? syncIntervalInSeconds;
  /// Specifies the maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [FluxConfigurationBlobStorage].
  /// [accountKey] Specifies the account key (shared key) to access the storage account.
  /// [containerId] Specifies the Azure Blob container ID.
  /// [localAuthReference] Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [managedIdentity] A `managed_identity` block as defined below.
  /// [sasToken] Specifies the shared access token to access the storage container.
  /// [servicePrincipal] A `service_principal` block as defined below.
  /// [syncIntervalInSeconds] Specifies the interval at which to re-reconcile the cluster Azure Blob source with the remote.
  /// [timeoutInSeconds] Specifies the maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  FluxConfigurationBlobStorage({
    this.accountKey,
    required this.containerId,
    this.localAuthReference,
    this.managedIdentity,
    this.sasToken,
    this.servicePrincipal,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'containerId': containerId,
      'localAuthReference': ?localAuthReference,
      'managedIdentity': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationBlobStorageManagedIdentity, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
      'sasToken': ?sasToken,
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationBlobStorageServicePrincipal, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory FluxConfigurationBlobStorage.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationBlobStorage(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerId: pulumi.Input.fromValue(map['containerId'] as String),
      localAuthReference: (() { final guardedValue = map['localAuthReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentity: (() { final guardedValue = map['managedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FluxConfigurationBlobStorageManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FluxConfigurationBlobStorageServicePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      syncIntervalInSeconds: (() { final guardedValue = map['syncIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

