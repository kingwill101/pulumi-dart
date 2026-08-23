// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_security_partner_provider_security_partner_provider_args_doc}
/// The set of arguments for SecurityPartnerProvider.
/// {@endtemplate}
/// {@macro pulumi_network_security_partner_provider_security_partner_provider_args_doc}
class SecurityPartnerProviderArgs {
  /// The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String> securityProviderName;
  /// A mapping of tags which should be assigned to the Security Partner Provider.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [SecurityPartnerProviderArgs].
  /// [location] The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  /// [securityProviderName] The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Security Partner Provider.
  /// [virtualHubId] The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
  const SecurityPartnerProviderArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.securityProviderName,
    this.tags,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'securityProviderName': securityProviderName,
      'tags': ?tags,
      'virtualHubId': ?virtualHubId,
    };
  }

  factory SecurityPartnerProviderArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPartnerProviderArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityProviderName: pulumi.Input.fromValue(map['securityProviderName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
