// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasemigration_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_databasemigration_service_service_args_doc}
class ServiceArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specify the name of the database migration service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Name of the resource group in which to create the database migration service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU name of the database migration service. Possible values are `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores` and `Standard_4vCores`. Changing this forces a new resource to be created.
  final pulumi.Input<String> skuName;
  /// The ID of the virtual subnet resource to which the database migration service should be joined. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags to assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specify the name of the database migration service. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group in which to create the database migration service. Changing this forces a new resource to be created.
  /// [skuName] The SKU name of the database migration service. Possible values are `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores` and `Standard_4vCores`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the virtual subnet resource to which the database migration service should be joined. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assigned to the resource.
  ServiceArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> skuName,
    required pulumi.Output<String> subnetId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

