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
  CustomLocationArgs({
    pulumi.Output<CustomLocationAuthentication>? authentication,
    required pulumi.Output<List<String>> clusterExtensionIds,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> hostResourceId,
    pulumi.Output<String>? hostType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespace,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authentication = pulumi.Input.asOptionalInput<CustomLocationAuthentication>(authentication),
      clusterExtensionIds = pulumi.Input.asInput<List<String>>(clusterExtensionIds),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      hostResourceId = pulumi.Input.asInput<String>(hostResourceId),
      hostType = pulumi.Input.asOptionalInput<String>(hostType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asInput<String>(namespace),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      authentication: map['authentication'] == null ? null : pulumi.Output.create<CustomLocationAuthentication>(CustomLocationAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      clusterExtensionIds: pulumi.Output.create<List<String>>((map['clusterExtensionIds'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      hostResourceId: pulumi.Output.create<String>(map['hostResourceId'] as String),
      hostType: map['hostType'] == null ? null : pulumi.Output.create<String>(map['hostType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

