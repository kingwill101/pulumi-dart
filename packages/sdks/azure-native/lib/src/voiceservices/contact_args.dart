// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_voiceservices_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_voiceservices_contact_args_doc}
class ContactArgs {
  /// Unique identifier for this deployment
  final pulumi.Input<String> communicationsGatewayName;

  /// Full name of contact
  final pulumi.Input<String>? contactName;

  /// Email address of contact
  final pulumi.Input<String> email;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Telephone number of contact
  final pulumi.Input<String> phoneNumber;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Job title of contact
  final pulumi.Input<String> role;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ContactArgs].
  /// [communicationsGatewayName] Unique identifier for this deployment
  /// [contactName] Full name of contact
  /// [email] Email address of contact
  /// [location] The geo-location where the resource lives
  /// [phoneNumber] Telephone number of contact
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [role] Job title of contact
  /// [tags] Resource tags.
  ContactArgs({
    required this.communicationsGatewayName,
    this.contactName,
    required this.email,
    this.location,
    required this.phoneNumber,
    required this.resourceGroupName,
    required this.role,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationsGatewayName': communicationsGatewayName,
      'contactName': ?contactName,
      'email': email,
      'location': ?location,
      'phoneNumber': phoneNumber,
      'resourceGroupName': resourceGroupName,
      'role': role,
      'tags': ?tags,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      communicationsGatewayName: pulumi.Input.fromValue(
        map['communicationsGatewayName'] as String,
      ),
      contactName: (() {
        final guardedValue = map['contactName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      role: pulumi.Input.fromValue(map['role'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
