// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_domain_ownership_identifier_slot_args_doc}
/// Arguments for getWebAppDomainOwnershipIdentifierSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_domain_ownership_identifier_slot_args_doc}
class GetWebAppDomainOwnershipIdentifierSlotArgs {
  /// Name of domain ownership identifier.
  final pulumi.Input<String> domainOwnershipIdentifierName;

  /// Name of the app.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the deployment slot. If a slot is not specified, the API will delete the binding for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppDomainOwnershipIdentifierSlotArgs].
  /// [domainOwnershipIdentifierName] Name of domain ownership identifier.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will delete the binding for the production slot.
  GetWebAppDomainOwnershipIdentifierSlotArgs({
    required this.domainOwnershipIdentifierName,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainOwnershipIdentifierName': domainOwnershipIdentifierName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppDomainOwnershipIdentifierSlotArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWebAppDomainOwnershipIdentifierSlotArgs(
      domainOwnershipIdentifierName: pulumi.Input.fromValue(
        map['domainOwnershipIdentifierName'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
