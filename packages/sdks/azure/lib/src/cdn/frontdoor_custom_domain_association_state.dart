// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FrontdoorCustomDomainAssociation resources.
class FrontdoorCustomDomainAssociationState {
  /// The ID of the Front Door Custom Domain that should be managed by the association resource. Changing this forces a new association resource to be created.
  final pulumi.Input<String?>? cdnFrontdoorCustomDomainId;
  /// One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with.
  ///
  /// &gt; **Note:** This should include all of the Front Door Route resources that the Front Door Custom Domain is associated with. If the list of Front Door Routes is not complete you will receive the service side error `This resource is still associated with a route. Please delete the association with the route first before deleting this resource` when you attempt to `destroy`/`delete` your Front Door Custom Domain.
  final pulumi.Input<List<String>?>? cdnFrontdoorRouteIds;

  /// Creates a new [FrontdoorCustomDomainAssociationState].
  /// [cdnFrontdoorCustomDomainId] The ID of the Front Door Custom Domain that should be managed by the association resource. Changing this forces a new association resource to be created.
  /// [cdnFrontdoorRouteIds] One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with.
  const FrontdoorCustomDomainAssociationState({
    this.cdnFrontdoorCustomDomainId,
    this.cdnFrontdoorRouteIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorCustomDomainId': ?cdnFrontdoorCustomDomainId,
      'cdnFrontdoorRouteIds': ?cdnFrontdoorRouteIds,
    };
  }

  factory FrontdoorCustomDomainAssociationState.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainAssociationState(
      cdnFrontdoorCustomDomainId: (() { final guardedValue = map['cdnFrontdoorCustomDomainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cdnFrontdoorRouteIds: (() { final guardedValue = map['cdnFrontdoorRouteIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
