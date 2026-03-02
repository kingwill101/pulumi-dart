// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_location_authentication.dart';

/// Input properties used for looking up and filtering CustomLocation resources.
class CustomLocationState {
  /// An `authentication` block as defined below.
  final pulumi.Input<CustomLocationAuthentication>? authentication;
  /// Specifies the list of Cluster Extension IDs.
  final pulumi.Input<List<String>>? clusterExtensionIds;
  /// Specifies the display name of the Custom Location.
  final pulumi.Input<String>? displayName;
  /// Specifies the host resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostResourceId;
  /// Specifies the host type of the Custom Location. The only possible values is `KubernetesCluster`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostType;
  /// Specifies the Azure location where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Custom Location. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String>? name;
  /// Specifies the namespace of the Custom Location. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String>? namespace;
  /// Specifies the name of the Resource Group where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [CustomLocationState].
  /// [authentication] An `authentication` block as defined below.
  /// [clusterExtensionIds] Specifies the list of Cluster Extension IDs.
  /// [displayName] Specifies the display name of the Custom Location.
  /// [hostResourceId] Specifies the host resource ID. Changing this forces a new resource to be created.
  /// [hostType] Specifies the host type of the Custom Location. The only possible values is `KubernetesCluster`. Changing this forces a new resource to be created.
  /// [location] Specifies the Azure location where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  /// [name] Specifies the name which should be used for this Custom Location. Changing this forces a new Custom Location to be created.
  /// [namespace] Specifies the namespace of the Custom Location. Changing this forces a new Custom Location to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  CustomLocationState({
    this.authentication,
    this.clusterExtensionIds,
    this.displayName,
    this.hostResourceId,
    this.hostType,
    this.location,
    this.name,
    this.namespace,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<CustomLocationAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clusterExtensionIds': ?clusterExtensionIds,
      'displayName': ?displayName,
      'hostResourceId': ?hostResourceId,
      'hostType': ?hostType,
      'location': ?location,
      'name': ?name,
      'namespace': ?namespace,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory CustomLocationState.fromMap(Map<String, dynamic> map) {
    return CustomLocationState(
      authentication: map['authentication'] == null ? null : (CustomLocationAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      clusterExtensionIds: map['clusterExtensionIds'] == null ? null : ((map['clusterExtensionIds'] as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      hostResourceId: map['hostResourceId'] == null ? null : (map['hostResourceId'] as String).input(),
      hostType: map['hostType'] == null ? null : (map['hostType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

