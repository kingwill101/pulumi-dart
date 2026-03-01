// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_healthbot_healthbot_args_doc}
/// The set of arguments for Healthbot.
/// {@endtemplate}
/// {@macro pulumi_bot_healthbot_healthbot_args_doc}
class HealthbotArgs {
  /// Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name which should be used for the SKU of the service. Possible values are `C0`, `C1`, `F0`, `PES` and `S1`.
  ///
  /// > **Note:** Downgrading to `F0` forces a new resource to be created.
  final pulumi.Input<String> skuName;
  /// A mapping of tags which should be assigned to the service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HealthbotArgs].
  /// [location] Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
  /// [name] Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created.
  /// [skuName] The name which should be used for the SKU of the service. Possible values are `C0`, `C1`, `F0`, `PES` and `S1`.
  /// [tags] A mapping of tags which should be assigned to the service.
  HealthbotArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory HealthbotArgs.fromMap(Map<String, dynamic> map) {
    return HealthbotArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

