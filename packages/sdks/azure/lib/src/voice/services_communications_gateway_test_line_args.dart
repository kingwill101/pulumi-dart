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
  const ServicesCommunicationsGatewayTestLineArgs({
    this.location,
    this.name,
    required this.phoneNumber,
    required this.purpose,
    this.tags,
    required this.voiceServicesCommunicationsGatewayId,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      voiceServicesCommunicationsGatewayId: pulumi.Input.fromValue(map['voiceServicesCommunicationsGatewayId'] as String),
    );
  }
}

