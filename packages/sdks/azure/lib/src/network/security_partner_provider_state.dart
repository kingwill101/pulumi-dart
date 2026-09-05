// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityPartnerProvider resources.
class SecurityPartnerProviderState {
  /// The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? securityProviderName;
  /// A mapping of tags which should be assigned to the Security Partner Provider.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? virtualHubId;

  /// Creates a new [SecurityPartnerProviderState].
  /// [location] The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  /// [securityProviderName] The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Security Partner Provider.
  /// [virtualHubId] The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
  const SecurityPartnerProviderState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.securityProviderName,
    this.tags,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'securityProviderName': ?securityProviderName,
      'tags': ?tags,
      'virtualHubId': ?virtualHubId,
    };
  }

  factory SecurityPartnerProviderState.fromMap(Map<String, dynamic> map) {
    return SecurityPartnerProviderState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProviderName: (() { final guardedValue = map['securityProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
