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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? securityProviderName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualHubId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      securityProviderName = pulumi.Input.asOptionalInput<String>(securityProviderName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHubId = pulumi.Input.asOptionalInput<String>(virtualHubId);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityProviderName: map['securityProviderName'] == null ? null : pulumi.Output.create<String>(map['securityProviderName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHubId: map['virtualHubId'] == null ? null : pulumi.Output.create<String>(map['virtualHubId'] as String),
    );
  }
}

