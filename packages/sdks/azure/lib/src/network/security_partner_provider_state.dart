// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityPartnerProvider resources.
class SecurityPartnerProviderState {
  /// The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? securityProviderName;
  /// A mapping of tags which should be assigned to the Security Partner Provider.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [SecurityPartnerProviderState].
  /// [location] The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  /// [securityProviderName] The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Security Partner Provider.
  /// [virtualHubId] The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
  SecurityPartnerProviderState({
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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      securityProviderName: map['securityProviderName'] == null ? null : (map['securityProviderName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualHubId: map['virtualHubId'] == null ? null : (map['virtualHubId']! as String).input(),
    );
  }
}

