// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_contact_profile_args_doc}
/// Arguments for getContactProfile.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_contact_profile_args_doc}
class GetContactProfileArgs {
  /// Contact Profile name.
  final pulumi.Input<String> contactProfileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContactProfileArgs].
  /// [contactProfileName] Contact Profile name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetContactProfileArgs({
    required pulumi.Output<String> contactProfileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      contactProfileName = pulumi.Input.asInput<String>(contactProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactProfileName': contactProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContactProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetContactProfileArgs(
      contactProfileName: pulumi.Output.create<String>(map['contactProfileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

