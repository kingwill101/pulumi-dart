// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_private_link_hub_private_link_hub_args_doc}
/// The set of arguments for PrivateLinkHub.
/// {@endtemplate}
/// {@macro pulumi_synapse_private_link_hub_private_link_hub_args_doc}
class PrivateLinkHubArgs {
  /// Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Synapse Private Link Hub.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkHubArgs].
  /// [location] Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Synapse Private Link Hub.
  PrivateLinkHubArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkHubArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkHubArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

