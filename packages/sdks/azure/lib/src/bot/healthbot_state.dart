// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Healthbot resources.
class HealthbotState {
  /// The management portal url.
  final pulumi.Input<String?>? botManagementPortalUrl;
  /// Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The name which should be used for the SKU of the service. Possible values are `C0`, `C1`, `F0`, `PES` and `S1`.
  ///
  /// &gt; **Note:** Downgrading to `F0` forces a new resource to be created.
  final pulumi.Input<String?>? skuName;
  /// A mapping of tags which should be assigned to the service.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [HealthbotState].
  /// [botManagementPortalUrl] The management portal url.
  /// [location] Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
  /// [name] Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created.
  /// [skuName] The name which should be used for the SKU of the service. Possible values are `C0`, `C1`, `F0`, `PES` and `S1`.
  /// [tags] A mapping of tags which should be assigned to the service.
  const HealthbotState({
    this.botManagementPortalUrl,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botManagementPortalUrl': ?botManagementPortalUrl,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory HealthbotState.fromMap(Map<String, dynamic> map) {
    return HealthbotState(
      botManagementPortalUrl: (() { final guardedValue = map['botManagementPortalUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
