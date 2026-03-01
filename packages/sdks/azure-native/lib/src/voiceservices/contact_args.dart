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
    required pulumi.Output<String> communicationsGatewayName,
    pulumi.Output<String>? contactName,
    required pulumi.Output<String> email,
    pulumi.Output<String>? location,
    required pulumi.Output<String> phoneNumber,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> role,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      communicationsGatewayName = pulumi.Input.asInput<String>(communicationsGatewayName),
      contactName = pulumi.Input.asOptionalInput<String>(contactName),
      email = pulumi.Input.asInput<String>(email),
      location = pulumi.Input.asOptionalInput<String>(location),
      phoneNumber = pulumi.Input.asInput<String>(phoneNumber),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      role = pulumi.Input.asInput<String>(role),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      communicationsGatewayName: pulumi.Output.create<String>(map['communicationsGatewayName'] as String),
      contactName: map['contactName'] == null ? null : pulumi.Output.create<String>(map['contactName'] as String),
      email: pulumi.Output.create<String>(map['email'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      phoneNumber: pulumi.Output.create<String>(map['phoneNumber'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

