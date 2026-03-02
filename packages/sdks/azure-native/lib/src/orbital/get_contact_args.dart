// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_contact_args_doc}
/// Arguments for getContact.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_contact_args_doc}
class GetContactArgs {
  /// Contact name.
  final pulumi.Input<String> contactName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Spacecraft ID.
  final pulumi.Input<String> spacecraftName;

  /// Creates a new [GetContactArgs].
  /// [contactName] Contact name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spacecraftName] Spacecraft ID.
  GetContactArgs({
    required this.contactName,
    required this.resourceGroupName,
    required this.spacecraftName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': contactName,
      'resourceGroupName': resourceGroupName,
      'spacecraftName': spacecraftName,
    };
  }

  factory GetContactArgs.fromMap(Map<String, dynamic> map) {
    return GetContactArgs(
      contactName: (map['contactName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      spacecraftName: (map['spacecraftName'] as String).input(),
    );
  }
}

