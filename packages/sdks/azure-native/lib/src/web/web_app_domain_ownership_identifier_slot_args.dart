// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_domain_ownership_identifier_slot_args_doc}
/// The set of arguments for WebAppDomainOwnershipIdentifierSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_domain_ownership_identifier_slot_args_doc}
class WebAppDomainOwnershipIdentifierSlotArgs {
  /// Name of domain ownership identifier.
  final pulumi.Input<String>? domainOwnershipIdentifierName;

  /// Kind of resource.
  final pulumi.Input<String>? kind;

  /// Name of the app.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the deployment slot. If a slot is not specified, the API will delete the binding for the production slot.
  final pulumi.Input<String> slot;

  /// String representation of the identity.
  final pulumi.Input<String>? value;

  /// Creates a new [WebAppDomainOwnershipIdentifierSlotArgs].
  /// [domainOwnershipIdentifierName] Name of domain ownership identifier.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will delete the binding for the production slot.
  /// [value] String representation of the identity.
  WebAppDomainOwnershipIdentifierSlotArgs({
    this.domainOwnershipIdentifierName,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainOwnershipIdentifierName': ?domainOwnershipIdentifierName,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
      'value': ?value,
    };
  }

  factory WebAppDomainOwnershipIdentifierSlotArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAppDomainOwnershipIdentifierSlotArgs(
      domainOwnershipIdentifierName: (() {
        final guardedValue = map['domainOwnershipIdentifierName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      slot: pulumi.Input.fromValue(map['slot'] as String),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
