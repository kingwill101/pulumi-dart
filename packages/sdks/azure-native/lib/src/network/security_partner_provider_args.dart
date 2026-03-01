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
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? securityPartnerProviderName,
    pulumi.Output<String>? securityProviderName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SubResource>? virtualHub,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityPartnerProviderName = pulumi.Input.asOptionalInput<String>(securityPartnerProviderName),
      securityProviderName = pulumi.Input.asOptionalInput<String>(securityProviderName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHub = pulumi.Input.asOptionalInput<SubResource>(virtualHub);

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
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityPartnerProviderName: map['securityPartnerProviderName'] == null ? null : pulumi.Output.create<String>(map['securityPartnerProviderName'] as String),
      securityProviderName: map['securityProviderName'] == null ? null : pulumi.Output.create<String>(map['securityProviderName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHub: map['virtualHub'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())),
    );
  }
}

