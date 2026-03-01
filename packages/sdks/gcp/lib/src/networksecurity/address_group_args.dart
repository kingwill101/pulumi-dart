// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_address_group_address_group_args_doc}
/// The set of arguments for AddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_address_group_address_group_args_doc}
class AddressGroupArgs {
  /// Capacity of the Address Group.
  final pulumi.Input<int> capacity;
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// List of items.
  final pulumi.Input<List<String>>? items;
  /// Set of label tags associated with the AddressGroup resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the gateway security policy.
  /// The default value is `global`.
  final pulumi.Input<String> location;
  /// Name of the AddressGroup resource.
  final pulumi.Input<String>? name;
  /// The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}.
  final pulumi.Input<String>? parent;
  /// List of supported purposes of the Address Group.
  /// Each value may be one of: `DEFAULT`, `CLOUD_ARMOR`.
  final pulumi.Input<List<String>>? purposes;
  /// The type of the Address Group. Possible values are "IPV4" or "IPV6".
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String> type;

  /// Creates a new [AddressGroupArgs].
  /// [capacity] Capacity of the Address Group.
  /// [description] Free-text description of the resource.
  /// [items] List of items.
  /// [labels] Set of label tags associated with the AddressGroup resource.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the AddressGroup resource.
  /// [parent] The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}.
  /// [purposes] List of supported purposes of the Address Group.
  /// [type] The type of the Address Group. Possible values are "IPV4" or "IPV6".
  AddressGroupArgs({
    required pulumi.Output<int> capacity,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? items,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<List<String>>? purposes,
    required pulumi.Output<String> type,
  }) :
      capacity = pulumi.Input.asInput<int>(capacity),
      description = pulumi.Input.asOptionalInput<String>(description),
      items = pulumi.Input.asOptionalInput<List<String>>(items),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      purposes = pulumi.Input.asOptionalInput<List<String>>(purposes),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'description': ?description,
      'items': ?items,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'parent': ?parent,
      'purposes': ?purposes,
      'type': type,
    };
  }

  factory AddressGroupArgs.fromMap(Map<String, dynamic> map) {
    return AddressGroupArgs(
      capacity: pulumi.Output.create<int>(map['capacity'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      items: map['items'] == null ? null : pulumi.Output.create<List<String>>((map['items'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      purposes: map['purposes'] == null ? null : pulumi.Output.create<List<String>>((map['purposes'] as List).cast<String>()),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

