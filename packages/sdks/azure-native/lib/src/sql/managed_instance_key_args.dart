// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_instance_key_args_doc}
/// The set of arguments for ManagedInstanceKey.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_instance_key_args_doc}
class ManagedInstanceKeyArgs {
  /// The name of the managed instance key to be operated on (updated or created).
  final pulumi.Input<String>? keyName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The key type like 'ServiceManaged', 'AzureKeyVault'.
  final pulumi.Input<String> serverKeyType;
  /// The URI of the key. If the ServerKeyType is AzureKeyVault, then the URI is required.
  final pulumi.Input<String>? uri;

  /// Creates a new [ManagedInstanceKeyArgs].
  /// [keyName] The name of the managed instance key to be operated on (updated or created).
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverKeyType] The key type like 'ServiceManaged', 'AzureKeyVault'.
  /// [uri] The URI of the key. If the ServerKeyType is AzureKeyVault, then the URI is required.
  ManagedInstanceKeyArgs({
    this.keyName,
    required this.managedInstanceName,
    required this.resourceGroupName,
    required this.serverKeyType,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
      'serverKeyType': serverKeyType,
      'uri': ?uri,
    };
  }

  factory ManagedInstanceKeyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceKeyArgs(
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      managedInstanceName: (map['managedInstanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverKeyType: (map['serverKeyType'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

