// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Embedded resources.
class EmbeddedState {
  /// A set of administrator user identities, which manages the Power BI Embedded and must be a member user or a service principal in your AAD tenant.
  final pulumi.Input<List<String>>? administrators;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Sets the PowerBI Embedded's mode. Possible values include: `Gen1`, `Gen2`. Defaults to `Gen1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mode;
  /// The name of the PowerBI Embedded. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the PowerBI Embedded should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Sets the PowerBI Embedded's pricing level's SKU. Possible values include: `A1`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7` and `A8`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EmbeddedState].
  /// [administrators] A set of administrator user identities, which manages the Power BI Embedded and must be a member user or a service principal in your AAD tenant.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [mode] Sets the PowerBI Embedded's mode. Possible values include: `Gen1`, `Gen2`. Defaults to `Gen1`. Changing this forces a new resource to be created.
  /// [name] The name of the PowerBI Embedded. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the PowerBI Embedded should be created. Changing this forces a new resource to be created.
  /// [skuName] Sets the PowerBI Embedded's pricing level's SKU. Possible values include: `A1`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7` and `A8`.
  /// [tags] A mapping of tags to assign to the resource.
  EmbeddedState({
    pulumi.Output<List<String>>? administrators,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      administrators = pulumi.Input.asOptionalInput<List<String>>(administrators),
      location = pulumi.Input.asOptionalInput<String>(location),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrators': ?administrators,
      'location': ?location,
      'mode': ?mode,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory EmbeddedState.fromMap(Map<String, dynamic> map) {
    return EmbeddedState(
      administrators: map['administrators'] == null ? null : pulumi.Output.create<List<String>>((map['administrators'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

