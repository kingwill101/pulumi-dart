// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_network_security_partner_provider_args_doc}
/// The set of arguments for SecurityPartnerProvider.
/// {@endtemplate}
/// {@macro pulumi_network_security_partner_provider_args_doc}
class SecurityPartnerProviderArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Security Partner Provider.
  final pulumi.Input<String>? securityPartnerProviderName;
  /// The security provider name.
  final pulumi.Input<String>? securityProviderName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The virtualHub to which the Security Partner Provider belongs.
  final pulumi.Input<SubResource>? virtualHub;

  /// Creates a new [SecurityPartnerProviderArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [securityPartnerProviderName] The name of the Security Partner Provider.
  /// [securityProviderName] The security provider name.
  /// [tags] Resource tags.
  /// [virtualHub] The virtualHub to which the Security Partner Provider belongs.
  SecurityPartnerProviderArgs({
    this.id,
    this.location,
    required this.resourceGroupName,
    this.securityPartnerProviderName,
    this.securityProviderName,
    this.tags,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'securityPartnerProviderName': ?securityPartnerProviderName,
      'securityProviderName': ?securityProviderName,
      'tags': ?tags,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
    };
  }

  factory SecurityPartnerProviderArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPartnerProviderArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityPartnerProviderName: map['securityPartnerProviderName'] == null ? null : (map['securityPartnerProviderName'] as String).input(),
      securityProviderName: map['securityProviderName'] == null ? null : (map['securityProviderName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualHub: map['virtualHub'] == null ? null : (SubResource.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

