// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_location_authentication.dart';

/// {@template pulumi_extendedlocation_custom_location_custom_location_args_doc}
/// The set of arguments for CustomLocation.
/// {@endtemplate}
/// {@macro pulumi_extendedlocation_custom_location_custom_location_args_doc}
class CustomLocationArgs {
  /// An `authentication` block as defined below.
  final pulumi.Input<CustomLocationAuthentication>? authentication;
  /// Specifies the list of Cluster Extension IDs.
  final pulumi.Input<List<String>> clusterExtensionIds;
  /// Specifies the display name of the Custom Location.
  final pulumi.Input<String>? displayName;
  /// Specifies the host resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> hostResourceId;
  /// Specifies the host type of the Custom Location. The only possible values is `KubernetesCluster`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostType;
  /// Specifies the Azure location where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Custom Location. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String>? name;
  /// Specifies the namespace of the Custom Location. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String> namespace;
  /// Specifies the name of the Resource Group where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CustomLocationArgs].
  /// [authentication] An `authentication` block as defined below.
  /// [clusterExtensionIds] Specifies the list of Cluster Extension IDs.
  /// [displayName] Specifies the display name of the Custom Location.
  /// [hostResourceId] Specifies the host resource ID. Changing this forces a new resource to be created.
  /// [hostType] Specifies the host type of the Custom Location. The only possible values is `KubernetesCluster`. Changing this forces a new resource to be created.
  /// [location] Specifies the Azure location where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  /// [name] Specifies the name which should be used for this Custom Location. Changing this forces a new Custom Location to be created.
  /// [namespace] Specifies the namespace of the Custom Location. Changing this forces a new Custom Location to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  const CustomLocationArgs({
    this.authentication,
    required this.clusterExtensionIds,
    this.displayName,
    required this.hostResourceId,
    this.hostType,
    this.location,
    this.name,
    required this.namespace,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<CustomLocationAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clusterExtensionIds': clusterExtensionIds,
      'displayName': ?displayName,
      'hostResourceId': hostResourceId,
      'hostType': ?hostType,
      'location': ?location,
      'name': ?name,
      'namespace': namespace,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CustomLocationArgs.fromMap(Map<String, dynamic> map) {
    return CustomLocationArgs(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomLocationAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterExtensionIds: pulumi.Input.fromValue((map['clusterExtensionIds'] as List).cast<String>()),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostResourceId: pulumi.Input.fromValue(map['hostResourceId'] as String),
      hostType: (() { final guardedValue = map['hostType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
