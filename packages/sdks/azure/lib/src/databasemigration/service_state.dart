// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specify the name of the database migration service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Name of the resource group in which to create the database migration service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU name of the database migration service. Possible values are `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores` and `Standard_4vCores`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// The ID of the virtual subnet resource to which the database migration service should be joined. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags to assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specify the name of the database migration service. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group in which to create the database migration service. Changing this forces a new resource to be created.
  /// [skuName] The SKU name of the database migration service. Possible values are `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores` and `Standard_4vCores`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the virtual subnet resource to which the database migration service should be joined. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assigned to the resource.
  ServiceState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

