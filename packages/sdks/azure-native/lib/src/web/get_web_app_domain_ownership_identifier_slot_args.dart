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
    required pulumi.Output<String> domainOwnershipIdentifierName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      domainOwnershipIdentifierName = pulumi.Input.asInput<String>(domainOwnershipIdentifierName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainOwnershipIdentifierName': domainOwnershipIdentifierName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppDomainOwnershipIdentifierSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDomainOwnershipIdentifierSlotArgs(
      domainOwnershipIdentifierName: pulumi.Output.create<String>(map['domainOwnershipIdentifierName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

