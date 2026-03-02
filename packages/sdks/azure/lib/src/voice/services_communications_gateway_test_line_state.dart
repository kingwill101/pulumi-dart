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
    this.location,
    this.name,
    this.phoneNumber,
    this.purpose,
    this.tags,
    this.voiceServicesCommunicationsGatewayId,
  });

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
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber'] as String).input(),
      purpose: map['purpose'] == null ? null : (map['purpose'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      voiceServicesCommunicationsGatewayId: map['voiceServicesCommunicationsGatewayId'] == null ? null : (map['voiceServicesCommunicationsGatewayId'] as String).input(),
    );
  }
}

