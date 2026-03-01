// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicesCommunicationsGatewayTestLine resources.
class ServicesCommunicationsGatewayTestLineState {
  /// Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the phone number.
  final pulumi.Input<String>? phoneNumber;
  /// The purpose of the Voice Services Communications Gateway Test Line. Possible values are `Automated` or `Manual`.
  final pulumi.Input<String>? purpose;
  /// A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? voiceServicesCommunicationsGatewayId;

  /// Creates a new [ServicesCommunicationsGatewayTestLineState].
  /// [location] Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created.
  /// [phoneNumber] Specifies the phone number.
  /// [purpose] The purpose of the Voice Services Communications Gateway Test Line. Possible values are `Automated` or `Manual`.
  /// [tags] A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line.
  /// [voiceServicesCommunicationsGatewayId] Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created.
  ServicesCommunicationsGatewayTestLineState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? phoneNumber,
    pulumi.Output<String>? purpose,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? voiceServicesCommunicationsGatewayId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      phoneNumber = pulumi.Input.asOptionalInput<String>(phoneNumber),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      voiceServicesCommunicationsGatewayId = pulumi.Input.asOptionalInput<String>(voiceServicesCommunicationsGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'phoneNumber': ?phoneNumber,
      'purpose': ?purpose,
      'tags': ?tags,
      'voiceServicesCommunicationsGatewayId': ?voiceServicesCommunicationsGatewayId,
    };
  }

  factory ServicesCommunicationsGatewayTestLineState.fromMap(Map<String, dynamic> map) {
    return ServicesCommunicationsGatewayTestLineState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      phoneNumber: map['phoneNumber'] == null ? null : pulumi.Output.create<String>(map['phoneNumber'] as String),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      voiceServicesCommunicationsGatewayId: map['voiceServicesCommunicationsGatewayId'] == null ? null : pulumi.Output.create<String>(map['voiceServicesCommunicationsGatewayId'] as String),
    );
  }
}

