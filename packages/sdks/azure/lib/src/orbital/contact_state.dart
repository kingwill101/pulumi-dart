// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Contact resources.
class ContactState {
  /// ID of the orbital contact profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? contactProfileId;
  /// Name of the Azure ground station. Changing this forces a new resource to be created.
  final pulumi.Input<String>? groundStationName;
  /// The name of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Reservation end time of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? reservationEndTime;
  /// Reservation start time of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? reservationStartTime;
  /// The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? spacecraftId;

  /// Creates a new [ContactState].
  /// [contactProfileId] ID of the orbital contact profile. Changing this forces a new resource to be created.
  /// [groundStationName] Name of the Azure ground station. Changing this forces a new resource to be created.
  /// [name] The name of the Contact. Changing this forces a new resource to be created.
  /// [reservationEndTime] Reservation end time of the Contact. Changing this forces a new resource to be created.
  /// [reservationStartTime] Reservation start time of the Contact. Changing this forces a new resource to be created.
  /// [spacecraftId] The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created.
  ContactState({
    pulumi.Output<String>? contactProfileId,
    pulumi.Output<String>? groundStationName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? reservationEndTime,
    pulumi.Output<String>? reservationStartTime,
    pulumi.Output<String>? spacecraftId,
  }) :
      contactProfileId = pulumi.Input.asOptionalInput<String>(contactProfileId),
      groundStationName = pulumi.Input.asOptionalInput<String>(groundStationName),
      name = pulumi.Input.asOptionalInput<String>(name),
      reservationEndTime = pulumi.Input.asOptionalInput<String>(reservationEndTime),
      reservationStartTime = pulumi.Input.asOptionalInput<String>(reservationStartTime),
      spacecraftId = pulumi.Input.asOptionalInput<String>(spacecraftId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactProfileId': ?contactProfileId,
      'groundStationName': ?groundStationName,
      'name': ?name,
      'reservationEndTime': ?reservationEndTime,
      'reservationStartTime': ?reservationStartTime,
      'spacecraftId': ?spacecraftId,
    };
  }

  factory ContactState.fromMap(Map<String, dynamic> map) {
    return ContactState(
      contactProfileId: map['contactProfileId'] == null ? null : pulumi.Output.create<String>(map['contactProfileId'] as String),
      groundStationName: map['groundStationName'] == null ? null : pulumi.Output.create<String>(map['groundStationName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      reservationEndTime: map['reservationEndTime'] == null ? null : pulumi.Output.create<String>(map['reservationEndTime'] as String),
      reservationStartTime: map['reservationStartTime'] == null ? null : pulumi.Output.create<String>(map['reservationStartTime'] as String),
      spacecraftId: map['spacecraftId'] == null ? null : pulumi.Output.create<String>(map['spacecraftId'] as String),
    );
  }
}

