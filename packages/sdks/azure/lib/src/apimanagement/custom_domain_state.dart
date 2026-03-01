// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_developer_portal.dart';
import 'custom_domain_gateway.dart';
import 'custom_domain_management.dart';
import 'custom_domain_portal.dart';
import 'custom_domain_scm.dart';

/// Input properties used for looking up and filtering CustomDomain resources.
class CustomDomainState {
  /// The ID of the API Management service for which to configure Custom Domains. Changing this forces a new API Management Custom Domain resource to be created.
  final pulumi.Input<String>? apiManagementId;
  /// One or more `developer_portal` blocks as defined below.
  final pulumi.Input<List<CustomDomainDeveloperPortal>>? developerPortals;
  /// One or more `gateway` blocks as defined below.
  final pulumi.Input<List<CustomDomainGateway>>? gateways;
  /// One or more `management` blocks as defined below.
  final pulumi.Input<List<CustomDomainManagement>>? managements;
  /// One or more `portal` blocks as defined below.
  final pulumi.Input<List<CustomDomainPortal>>? portals;
  /// One or more `scm` blocks as defined below.
  final pulumi.Input<List<CustomDomainScm>>? scms;

  /// Creates a new [CustomDomainState].
  /// [apiManagementId] The ID of the API Management service for which to configure Custom Domains. Changing this forces a new API Management Custom Domain resource to be created.
  /// [developerPortals] One or more `developer_portal` blocks as defined below.
  /// [gateways] One or more `gateway` blocks as defined below.
  /// [managements] One or more `management` blocks as defined below.
  /// [portals] One or more `portal` blocks as defined below.
  /// [scms] One or more `scm` blocks as defined below.
  CustomDomainState({
    pulumi.Output<String>? apiManagementId,
    pulumi.Output<List<CustomDomainDeveloperPortal>>? developerPortals,
    pulumi.Output<List<CustomDomainGateway>>? gateways,
    pulumi.Output<List<CustomDomainManagement>>? managements,
    pulumi.Output<List<CustomDomainPortal>>? portals,
    pulumi.Output<List<CustomDomainScm>>? scms,
  }) :
      apiManagementId = pulumi.Input.asOptionalInput<String>(apiManagementId),
      developerPortals = pulumi.Input.asOptionalInput<List<CustomDomainDeveloperPortal>>(developerPortals),
      gateways = pulumi.Input.asOptionalInput<List<CustomDomainGateway>>(gateways),
      managements = pulumi.Input.asOptionalInput<List<CustomDomainManagement>>(managements),
      portals = pulumi.Input.asOptionalInput<List<CustomDomainPortal>>(portals),
      scms = pulumi.Input.asOptionalInput<List<CustomDomainScm>>(scms);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'developerPortals': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainDeveloperPortal>, List<Map<String, dynamic>>>(developerPortals, (value) => pulumi.Input.encodeList<CustomDomainDeveloperPortal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gateways': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainGateway>, List<Map<String, dynamic>>>(gateways, (value) => pulumi.Input.encodeList<CustomDomainGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managements': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainManagement>, List<Map<String, dynamic>>>(managements, (value) => pulumi.Input.encodeList<CustomDomainManagement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portals': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainPortal>, List<Map<String, dynamic>>>(portals, (value) => pulumi.Input.encodeList<CustomDomainPortal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scms': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainScm>, List<Map<String, dynamic>>>(scms, (value) => pulumi.Input.encodeList<CustomDomainScm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomDomainState.fromMap(Map<String, dynamic> map) {
    return CustomDomainState(
      apiManagementId: map['apiManagementId'] == null ? null : pulumi.Output.create<String>(map['apiManagementId'] as String),
      developerPortals: map['developerPortals'] == null ? null : pulumi.Output.create<List<CustomDomainDeveloperPortal>>(pulumi.Input.decodeList<CustomDomainDeveloperPortal>(map['developerPortals'], (value) => CustomDomainDeveloperPortal.fromMap((value as Map).cast<String, dynamic>()))),
      gateways: map['gateways'] == null ? null : pulumi.Output.create<List<CustomDomainGateway>>(pulumi.Input.decodeList<CustomDomainGateway>(map['gateways'], (value) => CustomDomainGateway.fromMap((value as Map).cast<String, dynamic>()))),
      managements: map['managements'] == null ? null : pulumi.Output.create<List<CustomDomainManagement>>(pulumi.Input.decodeList<CustomDomainManagement>(map['managements'], (value) => CustomDomainManagement.fromMap((value as Map).cast<String, dynamic>()))),
      portals: map['portals'] == null ? null : pulumi.Output.create<List<CustomDomainPortal>>(pulumi.Input.decodeList<CustomDomainPortal>(map['portals'], (value) => CustomDomainPortal.fromMap((value as Map).cast<String, dynamic>()))),
      scms: map['scms'] == null ? null : pulumi.Output.create<List<CustomDomainScm>>(pulumi.Input.decodeList<CustomDomainScm>(map['scms'], (value) => CustomDomainScm.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

