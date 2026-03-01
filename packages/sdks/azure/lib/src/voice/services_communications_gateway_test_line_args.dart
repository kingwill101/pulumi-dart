// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_voice_services_communications_gateway_test_line_services_communications_gateway_test_line_args_doc}
/// The set of arguments for ServicesCommunicationsGatewayTestLine.
/// {@endtemplate}
/// {@macro pulumi_voice_services_communications_gateway_test_line_services_communications_gateway_test_line_args_doc}
class ServicesCommunicationsGatewayTestLineArgs {
  /// Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the phone number.
  final pulumi.Input<String> phoneNumber;
  /// The purpose of the Voice Services Communications Gateway Test Line. Possible values are `Automated` or `Manual`.
  final pulumi.Input<String> purpose;
  /// A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> voiceServicesCommunicationsGatewayId;

  /// Creates a new [ServicesCommunicationsGatewayTestLineArgs].
  /// [location] Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created.
  /// [phoneNumber] Specifies the phone number.
  /// [purpose] The purpose of the Voice Services Communications Gateway Test Line. Possible values are `Automated` or `Manual`.
  /// [tags] A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line.
  /// [voiceServicesCommunicationsGatewayId] Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created.
  ServicesCommunicationsGatewayTestLineArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> phoneNumber,
    required pulumi.Output<String> purpose,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> voiceServicesCommunicationsGatewayId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      phoneNumber = pulumi.Input.asInput<String>(phoneNumber),
      purpose = pulumi.Input.asInput<String>(purpose),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      voiceServicesCommunicationsGatewayId = pulumi.Input.asInput<String>(voiceServicesCommunicationsGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'phoneNumber': phoneNumber,
      'purpose': purpose,
      'tags': ?tags,
      'voiceServicesCommunicationsGatewayId': voiceServicesCommunicationsGatewayId,
    };
  }

  factory ServicesCommunicationsGatewayTestLineArgs.fromMap(Map<String, dynamic> map) {
    return ServicesCommunicationsGatewayTestLineArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      phoneNumber: pulumi.Output.create<String>(map['phoneNumber'] as String),
      purpose: pulumi.Output.create<String>(map['purpose'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      voiceServicesCommunicationsGatewayId: pulumi.Output.create<String>(map['voiceServicesCommunicationsGatewayId'] as String),
    );
  }
}

