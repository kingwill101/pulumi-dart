// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AddressGroup resources.
class AddressGroupState {
  /// Capacity of the Address Group.
  final pulumi.Input<int>? capacity;
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? createTime;
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<String>? location;
  /// Name of the AddressGroup resource.
  final pulumi.Input<String>? name;
  /// The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}.
  final pulumi.Input<String>? parent;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// List of supported purposes of the Address Group.
  /// Each value may be one of: `DEFAULT`, `CLOUD_ARMOR`.
  final pulumi.Input<List<String>>? purposes;
  /// The type of the Address Group. Possible values are "IPV4" or "IPV6".
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? type;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AddressGroupState].
  /// [capacity] Capacity of the Address Group.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Free-text description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [items] List of items.
  /// [labels] Set of label tags associated with the AddressGroup resource.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the AddressGroup resource.
  /// [parent] The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [purposes] List of supported purposes of the Address Group.
  /// [type] The type of the Address Group. Possible values are "IPV4" or "IPV6".
  /// [updateTime] The timestamp when the resource was updated.
  AddressGroupState({
    pulumi.Output<int>? capacity,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<String>>? items,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<String>>? purposes,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      items = pulumi.Input.asOptionalInput<List<String>>(items),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      purposes = pulumi.Input.asOptionalInput<List<String>>(purposes),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'items': ?items,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'pulumiLabels': ?pulumiLabels,
      'purposes': ?purposes,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory AddressGroupState.fromMap(Map<String, dynamic> map) {
    return AddressGroupState(
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      items: map['items'] == null ? null : pulumi.Output.create<List<String>>((map['items'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      purposes: map['purposes'] == null ? null : pulumi.Output.create<List<String>>((map['purposes'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

