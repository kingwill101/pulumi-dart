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
    required this.capacity,
    this.description,
    this.items,
    this.labels,
    required this.location,
    this.name,
    this.parent,
    this.purposes,
    required this.type,
  });

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
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      items: (() {
        final guardedValue = map['items'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      purposes: (() {
        final guardedValue = map['purposes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
