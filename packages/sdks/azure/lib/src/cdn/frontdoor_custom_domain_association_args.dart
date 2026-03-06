// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_frontdoor_custom_domain_association_frontdoor_custom_domain_association_args_doc}
/// The set of arguments for FrontdoorCustomDomainAssociation.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_custom_domain_association_frontdoor_custom_domain_association_args_doc}
class FrontdoorCustomDomainAssociationArgs {
  /// The ID of the Front Door Custom Domain that should be managed by the association resource. Changing this forces a new association resource to be created.
  final pulumi.Input<String> cdnFrontdoorCustomDomainId;
  /// One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with.
  ///
  /// &gt; **Note:** This should include all of the Front Door Route resources that the Front Door Custom Domain is associated with. If the list of Front Door Routes is not complete you will receive the service side error `This resource is still associated with a route. Please delete the association with the route first before deleting this resource` when you attempt to `destroy`/`delete` your Front Door Custom Domain.
  final pulumi.Input<List<String>> cdnFrontdoorRouteIds;

  /// Creates a new [FrontdoorCustomDomainAssociationArgs].
  /// [cdnFrontdoorCustomDomainId] The ID of the Front Door Custom Domain that should be managed by the association resource. Changing this forces a new association resource to be created.
  /// [cdnFrontdoorRouteIds] One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with.
  const FrontdoorCustomDomainAssociationArgs({
    required this.cdnFrontdoorCustomDomainId,
    required this.cdnFrontdoorRouteIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorCustomDomainId': cdnFrontdoorCustomDomainId,
      'cdnFrontdoorRouteIds': cdnFrontdoorRouteIds,
    };
  }

  factory FrontdoorCustomDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainAssociationArgs(
      cdnFrontdoorCustomDomainId: pulumi.Input.fromValue(map['cdnFrontdoorCustomDomainId'] as String),
      cdnFrontdoorRouteIds: pulumi.Input.fromValue((map['cdnFrontdoorRouteIds'] as List).cast<String>()),
    );
  }
}

